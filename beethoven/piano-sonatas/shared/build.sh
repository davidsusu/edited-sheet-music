#!/usr/bin/env bash

set -euo pipefail

QUICK=0
PROJECT_ARG=""

for arg in "$@"; do
  case "$arg" in
    --quick)
      QUICK=1
      ;;
    --help|-h)
      echo "Usage: shared/build.sh <sonata-project-dir> [--quick]" >&2
      exit 0
      ;;
    -*)
      echo "Unknown option: ${arg}" >&2
      echo "Usage: shared/build.sh <sonata-project-dir> [--quick]" >&2
      exit 2
      ;;
    *)
      if [ -n "$PROJECT_ARG" ]; then
        echo "Unexpected argument: ${arg}" >&2
        echo "Usage: shared/build.sh <sonata-project-dir> [--quick]" >&2
        exit 2
      fi
      PROJECT_ARG="$arg"
      ;;
  esac
done

if [ -z "$PROJECT_ARG" ]; then
  echo "Usage: shared/build.sh <sonata-project-dir> [--quick]" >&2
  exit 2
fi

PROJECT_DIR="$(cd "$PROJECT_ARG" && pwd)"
SRC_DIR="${PROJECT_DIR}/src"
BUILD_DIR="${PROJECT_DIR}/build"
OUT_DIR="${PROJECT_DIR}/out"
RUN_DIR="${BUILD_DIR}/current"
OUT_STAGE_DIR="${RUN_DIR}/out"
EXTENDED_INITIAL_PAGES=3

log() {
  printf '[build] %s\n' "$*"
}

prepare_build_dir() {
  mkdir -p "$BUILD_DIR"
  find "$BUILD_DIR" -mindepth 1 -depth -delete
  mkdir -p "$RUN_DIR" "$OUT_STAGE_DIR"
}

publish_out_dir() {
  local staged_dir="$1"
  local backup_dir="${BUILD_DIR}/previous-out"

  if [ ! -d "$staged_dir" ]; then
    echo "Staged output directory does not exist: ${staged_dir}" >&2
    exit 1
  fi

  if [ -e "$backup_dir" ]; then
    find "$backup_dir" -mindepth 1 -depth -delete
    rmdir "$backup_dir"
  fi

  if [ -e "$OUT_DIR" ]; then
    mv "$OUT_DIR" "$backup_dir"
  fi

  mv "$staged_dir" "$OUT_DIR"

  if [ -e "$backup_dir" ]; then
    find "$backup_dir" -mindepth 1 -depth -delete
    rmdir "$backup_dir"
  fi
}

APT_UPDATED=0

install_debian_packages() {
  if ! command -v apt-get >/dev/null 2>&1; then
    echo "Missing required tools and apt-get is not available for auto-install." >&2
    exit 1
  fi

  local sudo_cmd=()
  if [ "$(id -u)" -ne 0 ]; then
    if ! command -v sudo >/dev/null 2>&1; then
      echo "Missing required tools and sudo is not available for auto-install." >&2
      exit 1
    fi
    sudo_cmd=(sudo)
  fi

  if [ "$APT_UPDATED" -eq 0 ]; then
    log "Updating package metadata"
    "${sudo_cmd[@]}" apt-get update
    APT_UPDATED=1
  fi

  log "Installing missing packages: $*"
  DEBIAN_FRONTEND=noninteractive "${sudo_cmd[@]}" apt-get install -y "$@"
}

require_command() {
  local command_name="$1"
  local package_name="$2"

  if ! command -v "$command_name" >/dev/null 2>&1; then
    install_debian_packages "$package_name"
  fi

  if ! command -v "$command_name" >/dev/null 2>&1; then
    echo "Required command still missing after install attempt: ${command_name}" >&2
    exit 1
  fi
}

ensure_lilypond_tools() {
  require_command lilypond lilypond
}

ensure_base_tools() {
  ensure_lilypond_tools

  require_command fc-match fontconfig
  local fontawesome_family
  fontawesome_family="$(fc-match -f '%{family}' FontAwesome)"
  if [[ "$fontawesome_family" != *FontAwesome* ]]; then
    install_debian_packages fonts-font-awesome
    fontawesome_family="$(fc-match -f '%{family}' FontAwesome)"
  fi

  if [[ "$fontawesome_family" != *FontAwesome* ]]; then
    echo "Required font still missing after install attempt: FontAwesome" >&2
    exit 1
  fi

  if ! command -v pdflatex >/dev/null 2>&1; then
    install_debian_packages texlive-latex-base texlive-latex-recommended
  fi

  if ! command -v pdflatex >/dev/null 2>&1; then
    echo "Required command still missing after install attempt: pdflatex" >&2
    exit 1
  fi

  if ! kpsewhich tgschola.sty >/dev/null 2>&1; then
    install_debian_packages texlive-fonts-recommended
  fi

  if ! kpsewhich tgschola.sty >/dev/null 2>&1; then
    echo "Required TeX package still missing after install attempt: tgschola" >&2
    exit 1
  fi

  local missing_poppler=0
  for command_name in pdfinfo pdftotext pdfseparate; do
    if ! command -v "$command_name" >/dev/null 2>&1; then
      missing_poppler=1
    fi
  done

  if [ "$missing_poppler" -eq 1 ]; then
    install_debian_packages poppler-utils
  fi

  for command_name in pdfinfo pdftotext pdfseparate; do
    if ! command -v "$command_name" >/dev/null 2>&1; then
      echo "Required command still missing after install attempt: ${command_name}" >&2
      exit 1
    fi
  done

  require_command gs ghostscript
  require_command exiftool libimage-exiftool-perl
}

select_fluidsynth_soundfont() {
  local candidate
  local flatpak_root
  local root

  find_first_soundfont() {
    local search_root="$1"
    shift

    [ -n "$search_root" ] || return 1
    [ -e "$search_root" ] || return 1

    find "$search_root" -type f "$@" 2>/dev/null | LC_ALL=C sort | sed -n '1p'
  }

  flatpak_root="$(flatpak info --show-location org.musescore.MuseScore 2>/dev/null || true)"
  for root in \
    "$flatpak_root" \
    "$HOME/.local/share/flatpak/app/org.musescore.MuseScore" \
    "/var/lib/flatpak/app/org.musescore.MuseScore"
  do
    candidate="$(find_first_soundfont "$root" \( -iname '*general*.sf2' -o -iname '*general*.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }

    candidate="$(find_first_soundfont "$root" \( -iname '*musescore*.sf2' -o -iname '*musescore*.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }

    candidate="$(find_first_soundfont "$root" \( -iname 'MS Basic.sf2' -o -iname 'MS Basic.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }

    candidate="$(find_first_soundfont "$root" \( -iname '*.sf2' -o -iname '*.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }
  done

  for root in \
    /usr/share/mscore-* \
    /usr/local/share/mscore-* \
    /usr/share/musescore* \
    /usr/local/share/musescore* \
    /usr/share/sounds/sf2 \
    /usr/share/sounds/sf3 \
    /usr/share/soundfonts \
    /usr/local/share/soundfonts \
    "$HOME/.local/share/MuseScore" \
    "$HOME"/Documents/MuseScore*
  do
    candidate="$(find_first_soundfont "$root" \( -iname '*musescore*general*.sf2' -o -iname '*musescore*general*.sf3' -o -iname '*general*musescore*.sf2' -o -iname '*general*musescore*.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }

    candidate="$(find_first_soundfont "$root" \( -iname '*general*.sf2' -o -iname '*general*.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }

    candidate="$(find_first_soundfont "$root" \( -iname '*musescore*.sf2' -o -iname '*musescore*.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }

    candidate="$(find_first_soundfont "$root" \( -iname 'MS Basic.sf2' -o -iname 'MS Basic.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }
  done

  for candidate in \
    /usr/share/sounds/sf2/FluidR3_GM.sf2 \
    /usr/share/soundfonts/FluidR3_GM.sf2 \
    /usr/share/sounds/sf2/default-GM.sf2 \
    /usr/share/soundfonts/default-GM.sf2 \
    /usr/share/sounds/sf2/TimGM6mb.sf2 \
    /usr/share/soundfonts/TimGM6mb.sf2
  do
    [ -f "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }
  done

  for root in \
    /usr/share/sounds/sf2 \
    /usr/share/sounds/sf3 \
    /usr/share/soundfonts \
    /usr/local/share/soundfonts
  do
    candidate="$(find_first_soundfont "$root" \( -iname '*.sf2' -o -iname '*.sf3' \))"
    [ -n "$candidate" ] && { printf '%s\n' "$candidate"; return 0; }
  done

  return 1
}

ensure_audio_tools() {
  require_command fluidsynth fluidsynth

  if ! select_fluidsynth_soundfont >/dev/null; then
    install_debian_packages fluid-soundfont-gm
  fi

  if ! select_fluidsynth_soundfont >/dev/null; then
    echo "No FluidSynth-compatible sound font was found." >&2
    exit 1
  fi
}

run_fluidsynth_export() {
  local midi_file="$1"
  local wav_file="$2"
  local soundfont
  soundfont="$(select_fluidsynth_soundfont)"

  log "Using soundfont: ${soundfont}"
  fluidsynth -ni -F "$wav_file" -r 44100 "$soundfont" "$midi_file"
}

build_lilypond_view() {
  local view_name="$1"
  local output_name="$2"
  local view_dir="${RUN_DIR}/${output_name}"

  mkdir -p "$view_dir"
  log "Engraving ${view_name}"
  lilypond -dno-point-and-click -o "${view_dir}/${output_name}" "${SRC_DIR}/${view_name}.ly"
}

build_lilypond_debug_source() {
  local source_file="$1"
  local output_name="$2"
  local view_dir="${RUN_DIR}/${output_name}"

  mkdir -p "$view_dir"
  log "Engraving ${output_name} with source links"
  lilypond -o "${view_dir}/${output_name}" "$source_file"
}

run_quick_build() {
  local quick_source="${RUN_DIR}/main-debug.ly"

  prepare_build_dir
  ensure_base_tools

  generate_main_debug_source "$quick_source"
  build_lilypond_debug_source "$quick_source" main-debug

  assemble_publication_pdf \
    "${RUN_DIR}/main-debug/main-debug.pdf" \
    "${SRC_DIR}/appendix-main.tex" \
    main-debug \
    "Pragmatic edition" \
    "${OUT_STAGE_DIR}/main-debug.pdf" \
    "${RUN_DIR}/main-debug/main-debug.pdf" \
    1
  publish_out_dir "$OUT_STAGE_DIR"

  log "Done"
}

lilypond_string_escape() {
  local value="$1"

  value="${value//\\/\\\\}"
  value="${value//\"/\\\"}"
  printf '%s' "$value"
}

generate_main_debug_source() {
  local output_source="$1"
  local escaped_content_path

  escaped_content_path="$(lilypond_string_escape "$SRC_DIR/content.ly")"

  {
    printf '\\version "2.24.1"\n\n'
    printf '\\include "%s"\n\n' "$escaped_content_path"
    cat <<'EOF'
mainEditionSubtitle = "Pragmatic edition"

mainHeaderData = \header {
  title = \workTitle
  subtitle = \mainEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \mainEditionSubtitle
}

\book {
  \mainHeaderData

  \bookpart {
    \frontMatterPaper
    \editionCoverPage \workTitle \mainEditionSubtitle \workComposer \workOpus
  }

  \bookpart {
    \frontMatterPaper
    \editionInfoPage \workTitle \mainEditionSubtitle \workComposer \workOpus \workDate \workEditor
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main-debug \firstMovement
      \defaultLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main-debug \secondMovement
      \defaultLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main-debug \thirdMovement
      \defaultLayout
    }
  }

  \bookpart {
    \score {
      \renderMovementForEdition #'main-debug \fourthMovement
      \defaultLayout
    }
  }
}
EOF
  } > "$output_source"
}

tex_escape() {
  local value="$1"
  local out=""
  local char
  local i

  for ((i = 0; i < ${#value}; i++)); do
    char="${value:i:1}"
    case "$char" in
      "\\") out+="\\textbackslash{}" ;;
      '&') out+="\\&" ;;
      '%') out+="\\%" ;;
      '$') out+="\\$" ;;
      '#') out+="\\#" ;;
      '_') out+="\\_" ;;
      '{') out+="\\{" ;;
      '}') out+="\\}" ;;
      '~') out+="\\textasciitilde{}" ;;
      '^') out+="\\textasciicircum{}" ;;
      *) out+="$char" ;;
    esac
  done

  printf '%s' "$out"
}

extract_critical_notes() {
  local notes_tsv="$1"

  awk '
    function trim(value) {
      gsub(/^[ \t]+/, "", value)
      gsub(/[ \t]+$/, "", value)
      return value
    }

    function fail(message) {
      print FILENAME ":" FNR ": " message > "/dev/stderr"
      exit 1
    }

    {
      line = $0
      if (line !~ /^[ \t]*%[ \t]*critical-note:[ \t]*/) {
        next
      }

      sub(/^[ \t]*%[ \t]*critical-note:[ \t]*/, "", line)

      first_pipe = index(line, "|")
      if (!first_pipe) {
        fail("invalid critical note")
      }
      note_id = trim(substr(line, 1, first_pipe - 1))
      line = substr(line, first_pipe + 1)

      second_pipe = index(line, "|")
      if (!second_pipe) {
        fail("invalid critical note")
      }
      marker = trim(substr(line, 1, second_pipe - 1))
      line = substr(line, second_pipe + 1)

      third_pipe = index(line, "|")
      if (!third_pipe) {
        fail("invalid critical note")
      }
      location = trim(substr(line, 1, third_pipe - 1))
      text = trim(substr(line, third_pipe + 1))

      if (note_id !~ /^[A-Za-z0-9_-]+$/) {
        fail("invalid critical note id: " note_id)
      }
      if (seen[note_id]++) {
        fail("duplicate critical note id: " note_id)
      }

      print note_id "\t" marker "\t" location "\t" text
    }
  ' "$SRC_DIR/content.ly" > "$notes_tsv"
}

generate_extended_index_source() {
  local notes_tsv="$1"
  local index_source="$2"
  local escaped_content_path
  local marker
  local location
  local note_id
  local text

  escaped_content_path="$(lilypond_string_escape "$SRC_DIR/content.ly")"

  {
    printf '\\version "2.24.1"\n\n'
    printf '\\include "%s"\n\n' "$escaped_content_path"
    cat <<'EOF'
extendedEditionSubtitle = "Extended critical edition"

extendedHeaderData = \header {
  title = \workTitle
  subtitle = \extendedEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \extendedEditionSubtitle
}

\book {
  \extendedHeaderData

  \bookpart {
    \frontMatterPaper
    \editionCoverPage \workTitle \extendedEditionSubtitle \workComposer \workOpus
  }

  \bookpart {
    \frontMatterPaper
    \editionInfoPage \workTitle \extendedEditionSubtitle \workComposer \workOpus \workDate \workEditor
  }

  \bookpart {
    \frontMatterPaper
    \markup \null
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \firstMovement
      \defaultLayout
    }
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \secondMovement
      \defaultLayout
    }
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \thirdMovement
      \defaultLayout
    }
  }

  \bookpart {
    \extendedMusicPaper
    \score {
      \renderMovementForEdition #'extended \fourthMovement
      \defaultLayout
    }
  }

  \bookpart {
    \frontMatterPaper
    \markup \column {
      \line { "CRITICAL_NOTE_INDEX_START" }
EOF
    while IFS=$'\t' read -r note_id marker location text; do
      [ -n "$note_id" ] || continue
      printf "      \\\\line { \"CRITICAL_NOTE_PAGE|%s|\" \\\\page-ref #'%s \"?\" \"?\" }\n" "$note_id" "$note_id"
    done < "$notes_tsv"
    cat <<'EOF'
      \line { "CRITICAL_NOTE_INDEX_END" }
    }
  }
}
EOF
  } > "$index_source"
}

pdf_pages() {
  pdfinfo "$1" | awk '/^Pages:/ { print $2 }'
}

generate_note_pages() {
  local notes_tsv="$1"
  local index_pdf="$2"
  local music_pages="$3"
  local initial_pages="$4"
  local tex_file="$5"

  local index_text="${RUN_DIR}/critical-index.txt"
  local page_map="${RUN_DIR}/critical-page-map.tsv"
  local notes_by_page="${RUN_DIR}/critical-notes-by-page.tsv"
  local escaped_location
  local escaped_marker
  local escaped_text
  local found
  local location
  local marker
  local note_id
  local note_page
  local page
  local resolved_page
  local score_display_page
  local note_display_page
  local text

  pdftotext "$index_pdf" "$index_text"

  tr '\n\f\r' '   ' < "$index_text" |
    grep -oE 'CRITICAL_NOTE_PAGE\|[A-Za-z0-9_-]+\|[[:space:]]*[0-9?]+' |
    awk -F '|' '
      {
        page = $3
        gsub(/^[ \t]+/, "", page)
        gsub(/[ \t]+$/, "", page)
        print $2 "\t" page
      }
    ' > "$page_map" || true

  : > "$notes_by_page"
  while IFS=$'\t' read -r note_id marker location text; do
    [ -n "$note_id" ] || continue

    resolved_page="$(
      awk -F '\t' -v id="$note_id" '
        $1 == id {
          print $2
          found = 1
          exit
        }
        END {
          if (!found) {
            exit 1
          }
        }
      ' "$page_map" || true
    )"

    if [ -z "$resolved_page" ]; then
      echo "Critical note id was not found in the rendered page index: ${note_id}" >&2
      exit 1
    fi
    if [ "$resolved_page" = "?" ]; then
      echo "LilyPond could not resolve the page for critical note id: ${note_id}" >&2
      exit 1
    fi
    if ! [[ "$resolved_page" =~ ^[0-9]+$ ]]; then
      echo "Critical note ${note_id} resolved to invalid page: ${resolved_page}" >&2
      exit 1
    fi
    if [ "$resolved_page" -lt 1 ] || [ "$resolved_page" -gt "$music_pages" ]; then
      echo "Critical note ${note_id} resolved to page ${resolved_page}, outside 1..${music_pages}" >&2
      exit 1
    fi
    if [ "$resolved_page" -le "$initial_pages" ]; then
      echo "Critical note ${note_id} resolved to initial page ${resolved_page}" >&2
      exit 1
    fi

    printf '%s\t%s\t%s\t%s\n' "$resolved_page" "$marker" "$location" "$text" >> "$notes_by_page"
  done < "$notes_tsv"

  {
    cat <<'EOF'
\documentclass[a4paper,10pt,twoside]{article}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[margin=18mm,headheight=14pt,headsep=6mm]{geometry}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{microtype}
\usepackage{multicol}
\usepackage{tgschola}
\setlength{\parindent}{0pt}
\setlength{\parskip}{7pt}
\setlength{\columnsep}{8mm}
\raggedcolumns
\begin{document}
EOF

    for page in $(seq $((initial_pages + 1)) "$music_pages"); do
      score_display_page=$((2 * page - initial_pages - 1))
      note_display_page=$((score_display_page + 1))
      printf '\\setcounter{page}{%d}\n' "$note_display_page"
      printf '\\fancyhf{}\n'
      printf '\\fancyhead[LO]{\\small Extended critical edition}\n'
      printf '\\fancyhead[RO]{\\thepage}\n'
      printf '\\section*{Editorial notes to page %d}\n' "$score_display_page"
      printf '\\begin{multicols}{2}\n'
      printf '\\raggedright\n'
      found=0

      while IFS=$'\t' read -r note_page marker location text; do
        [ "$note_page" = "$page" ] || continue
        found=1
        escaped_marker="$(tex_escape "$marker")"
        escaped_location="$(tex_escape "$location")"
        escaped_text="$(tex_escape "$text")"
        printf '\\noindent\\textbf{%s}\\quad\\textit{%s}\\par\n' "$escaped_marker" "$escaped_location"
        printf '%s\\par\n' "$escaped_text"
      done < "$notes_by_page"

      if [ "$found" -eq 0 ]; then
        printf '\\null\n'
      fi
      printf '\\end{multicols}\n'
      if [ "$page" -ne "$music_pages" ]; then
        printf '\\newpage\n'
      fi
    done

    printf '\\end{document}\n'
  } > "$tex_file"
}

compile_latex_pdf() {
  local tex_file="$1"
  local output_dir="$2"

  mkdir -p "$output_dir"
  pdflatex -interaction=nonstopmode -halt-on-error -output-directory "$output_dir" "$tex_file" >/dev/null
}

generate_appendix_source() {
  local body_file="$1"
  local edition_title="$2"
  local first_page="$3"
  local tex_file="$4"
  local escaped_edition_title

  if [ ! -f "$body_file" ]; then
    echo "Appendix source does not exist: ${body_file}" >&2
    exit 1
  fi

  escaped_edition_title="$(tex_escape "$edition_title")"

  cat > "$tex_file" <<EOF
\\documentclass[a4paper,10pt,twoside]{article}
\\usepackage[T1]{fontenc}
\\usepackage[utf8]{inputenc}
\\usepackage[margin=18mm,headheight=14pt,headsep=6mm]{geometry}
\\usepackage{fancyhdr}
\\usepackage{graphicx}
\\usepackage{microtype}
\\usepackage{multicol}
\\usepackage{tgschola}
\\setlength{\\parindent}{0pt}
\\setlength{\\parskip}{7pt}
\\setlength{\\columnsep}{8mm}
\\raggedcolumns
\\fancyhf{}
\\fancyhead[LE,RO]{\\thepage}
\\fancyhead[LO,RE]{\\small ${escaped_edition_title}}
\\pagestyle{fancy}
\\begin{document}
\\setcounter{page}{${first_page}}
\\section*{Editorial appendix}
\\begin{multicols*}{2}
\\raggedright
\\input{${body_file}}
\\end{multicols*}
\\end{document}
EOF
}

ensure_blank_page_pdf() {
  local blank_source="${RUN_DIR}/blank-page.tex"
  local blank_dir="${RUN_DIR}/blank-page"

  if [ -f "${blank_dir}/blank-page.pdf" ]; then
    return
  fi

  cat > "$blank_source" <<'EOF'
\documentclass[a4paper]{article}
\usepackage[margin=0mm]{geometry}
\pagestyle{empty}
\begin{document}
\null
\end{document}
EOF
  compile_latex_pdf "$blank_source" "$blank_dir"
}

copy_pdf_metadata() {
  local source_pdf="$1"
  local target_pdf="$2"

  exiftool -overwrite_original -TagsFromFile "$source_pdf" -all:all "$target_pdf" >/dev/null
}

combine_pdfs() {
  local output_pdf="$1"
  local preserve_annotations="$2"
  shift 2
  local actual_pages
  local expected_pages=0
  local input_pdf

  case "$preserve_annotations" in
    1|true) preserve_annotations=true ;;
    *) preserve_annotations=false ;;
  esac

  for input_pdf in "$@"; do
    expected_pages=$((expected_pages + $(pdf_pages "$input_pdf")))
  done

  gs -q -dSAFER -dBATCH -dNOPAUSE \
    -sDEVICE=pdfwrite \
    -dCompatibilityLevel=1.5 \
    -dAutoRotatePages=/None \
    -dPreserveAnnots="$preserve_annotations" \
    -sOutputFile="$output_pdf" \
    "$@"

  actual_pages="$(pdf_pages "$output_pdf")"
  if [ "$actual_pages" -ne "$expected_pages" ]; then
    echo "PDF assembly failed: expected ${expected_pages} pages, got ${actual_pages}." >&2
    exit 1
  fi
}

assemble_publication_pdf() {
  local base_pdf="$1"
  local appendix_body="$2"
  local edition_name="$3"
  local edition_title="$4"
  local output_pdf="$5"
  local metadata_pdf="$6"
  local preserve_annotations="${7:-0}"

  local appendix_dir="${RUN_DIR}/${edition_name}-appendix"
  local appendix_source="${RUN_DIR}/${edition_name}-appendix.tex"
  local base_pages
  local first_appendix_page
  local parts=("$base_pdf")

  base_pages="$(pdf_pages "$base_pdf")"
  first_appendix_page=$((base_pages + 1))
  if [ $((first_appendix_page % 2)) -eq 0 ]; then
    ensure_blank_page_pdf
    parts+=("${RUN_DIR}/blank-page/blank-page.pdf")
    first_appendix_page=$((first_appendix_page + 1))
  fi

  generate_appendix_source "$appendix_body" "$edition_title" "$first_appendix_page" "$appendix_source"
  compile_latex_pdf "$appendix_source" "$appendix_dir"
  parts+=("${appendix_dir}/${edition_name}-appendix.pdf")

  combine_pdfs "$output_pdf" "$preserve_annotations" "${parts[@]}"
  copy_pdf_metadata "$metadata_pdf" "$output_pdf"
}

assemble_extended_pdf() {
  local music_pdf="$1"
  local notes_pdf="$2"
  local output_pdf="$3"
  local music_pages="$4"
  local initial_pages="$5"

  local note_pages
  local score_pages
  score_pages=$((music_pages - initial_pages))
  note_pages="$(pdf_pages "$notes_pdf")"
  if [ "$note_pages" -ne "$score_pages" ]; then
    echo "Note pages overflowed: expected ${score_pages}, got ${note_pages}." >&2
    exit 1
  fi

  pdfseparate "$music_pdf" "${RUN_DIR}/music-page-%d.pdf"
  pdfseparate "$notes_pdf" "${RUN_DIR}/notes-page-%d.pdf"

  local parts=()
  local page
  for page in $(seq 1 "$initial_pages"); do
    parts+=("${RUN_DIR}/music-page-${page}.pdf")
  done

  local notes_page
  for page in $(seq $((initial_pages + 1)) "$music_pages"); do
    notes_page=$((page - initial_pages))
    parts+=("${RUN_DIR}/music-page-${page}.pdf")
    parts+=("${RUN_DIR}/notes-page-${notes_page}.pdf")
  done

  combine_pdfs "$output_pdf" false "${parts[@]}"
}

if [ "$QUICK" -eq 1 ]; then
  run_quick_build
  exit 0
fi

prepare_build_dir
ensure_base_tools
ensure_audio_tools

MAIN_DEBUG_SOURCE="${RUN_DIR}/main-debug.ly"
generate_main_debug_source "$MAIN_DEBUG_SOURCE"

build_lilypond_view main main
build_lilypond_debug_source "$MAIN_DEBUG_SOURCE" main-debug
build_lilypond_view urtext urtext
build_lilypond_view extended extended-music

cp "${RUN_DIR}/main/main.midi" "${OUT_STAGE_DIR}/main.midi"

NOTES_TSV="${RUN_DIR}/critical-notes.tsv"
INDEX_SOURCE="${RUN_DIR}/extended-index.ly"
INDEX_DIR="${RUN_DIR}/extended-index"
NOTES_TEX="${RUN_DIR}/extended-notes.tex"
NOTES_DIR="${RUN_DIR}/extended-notes"

extract_critical_notes "$NOTES_TSV"
generate_extended_index_source "$NOTES_TSV" "$INDEX_SOURCE"

mkdir -p "$INDEX_DIR"
log "Resolving critical note pages"
lilypond -dno-point-and-click -o "${INDEX_DIR}/extended-index" "$INDEX_SOURCE"

MUSIC_PDF="${RUN_DIR}/extended-music/extended-music.pdf"
MUSIC_PAGES="$(pdf_pages "$MUSIC_PDF")"

generate_note_pages "$NOTES_TSV" "${INDEX_DIR}/extended-index.pdf" "$MUSIC_PAGES" "$EXTENDED_INITIAL_PAGES" "$NOTES_TEX"
compile_latex_pdf "$NOTES_TEX" "$NOTES_DIR"
EXTENDED_BODY_PDF="${RUN_DIR}/extended-body.pdf"
assemble_extended_pdf "$MUSIC_PDF" "${NOTES_DIR}/extended-notes.pdf" "$EXTENDED_BODY_PDF" "$MUSIC_PAGES" "$EXTENDED_INITIAL_PAGES"

log "Assembling publication PDFs"
assemble_publication_pdf \
  "${RUN_DIR}/main/main.pdf" \
  "${SRC_DIR}/appendix-main.tex" \
  main \
  "Pragmatic edition" \
  "${OUT_STAGE_DIR}/main.pdf" \
  "${RUN_DIR}/main/main.pdf"
assemble_publication_pdf \
  "${RUN_DIR}/main-debug/main-debug.pdf" \
  "${SRC_DIR}/appendix-main.tex" \
  main-debug \
  "Pragmatic edition" \
  "${OUT_STAGE_DIR}/main-debug.pdf" \
  "${RUN_DIR}/main-debug/main-debug.pdf" \
  1
assemble_publication_pdf \
  "${RUN_DIR}/urtext/urtext.pdf" \
  "${SRC_DIR}/appendix-urtext.tex" \
  urtext \
  "Urtext-ish edition" \
  "${OUT_STAGE_DIR}/urtext.pdf" \
  "${RUN_DIR}/urtext/urtext.pdf"
assemble_publication_pdf \
  "$EXTENDED_BODY_PDF" \
  "${SRC_DIR}/appendix-extended.tex" \
  extended \
  "Extended critical edition" \
  "${OUT_STAGE_DIR}/extended.pdf" \
  "$MUSIC_PDF"

log "Rendering main.wav with FluidSynth"
WAV_RENDER="${RUN_DIR}/main-render.wav"
run_fluidsynth_export "${OUT_STAGE_DIR}/main.midi" "$WAV_RENDER"
cp "$WAV_RENDER" "${OUT_STAGE_DIR}/main.wav"

publish_out_dir "$OUT_STAGE_DIR"

log "Done"
