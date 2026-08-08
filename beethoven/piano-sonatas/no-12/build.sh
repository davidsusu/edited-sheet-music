#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="${PROJECT_DIR}/src"
BUILD_DIR="${PROJECT_DIR}/build"
OUT_DIR="${PROJECT_DIR}/out"
RUN_DIR="${BUILD_DIR}/current"
EXTENDED_INITIAL_PAGES=1

if [ "$#" -ne 0 ]; then
  echo "Usage: ./build.sh" >&2
  exit 2
fi

log() {
  printf '[build] %s\n' "$*"
}

prepare_build_dir() {
  mkdir -p "$BUILD_DIR"
  find "$BUILD_DIR" -mindepth 1 -depth -delete
  mkdir -p "$RUN_DIR" "$OUT_DIR"
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

ensure_base_tools() {
  require_command lilypond lilypond
  require_command python3 python3

  if ! command -v pdflatex >/dev/null 2>&1; then
    install_debian_packages texlive-latex-base texlive-latex-recommended
  fi

  if ! command -v pdflatex >/dev/null 2>&1; then
    echo "Required command still missing after install attempt: pdflatex" >&2
    exit 1
  fi

  local missing_poppler=0
  for command_name in pdfinfo pdftotext pdfseparate pdfunite; do
    if ! command -v "$command_name" >/dev/null 2>&1; then
      missing_poppler=1
    fi
  done

  if [ "$missing_poppler" -eq 1 ]; then
    install_debian_packages poppler-utils
  fi

  for command_name in pdfinfo pdftotext pdfseparate pdfunite; do
    if ! command -v "$command_name" >/dev/null 2>&1; then
      echo "Required command still missing after install attempt: ${command_name}" >&2
      exit 1
    fi
  done
}

has_musescore_flatpak() {
  command -v flatpak >/dev/null 2>&1 &&
    flatpak list --app --columns=application 2>/dev/null | grep -qx 'org.musescore.MuseScore'
}

ensure_musescore() {
  for command_name in musescore4 mscore MuseScore4 musescore; do
    if command -v "$command_name" >/dev/null 2>&1; then
      return
    fi
  done

  if has_musescore_flatpak; then
    return
  fi

  if ! command -v flatpak >/dev/null 2>&1; then
    install_debian_packages flatpak
  fi

  if ! flatpak remote-list 2>/dev/null | awk '{print $1}' | grep -qx flathub; then
    log "Adding Flathub remote"
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  fi

  log "Installing MuseScore 4 Flatpak"
  flatpak install -y flathub org.musescore.MuseScore
}

run_musescore_export() {
  local midi_file="$1"
  local wav_file="$2"

  for command_name in musescore4 mscore MuseScore4 musescore; do
    if command -v "$command_name" >/dev/null 2>&1; then
      "$command_name" -o "$wav_file" "$midi_file"
      return
    fi
  done

  flatpak run --branch=stable --arch=x86_64 --command=mscore org.musescore.MuseScore -o "$wav_file" "$midi_file"
}

build_lilypond_view() {
  local view_name="$1"
  local output_name="$2"
  local view_dir="${RUN_DIR}/${output_name}"

  mkdir -p "$view_dir"
  log "Engraving ${view_name}"
  lilypond -dno-point-and-click -o "${view_dir}/${output_name}" "${SRC_DIR}/${view_name}.ly"
}

build_lilypond_debug_view() {
  local view_name="$1"
  local output_name="$2"
  local view_dir="${RUN_DIR}/${output_name}"

  mkdir -p "$view_dir"
  log "Engraving ${view_name} with source links"
  lilypond -o "${view_dir}/${output_name}" "${SRC_DIR}/${view_name}.ly"
}

extract_critical_notes() {
  local notes_tsv="$1"

  python3 - "$SRC_DIR/content.ly" "$notes_tsv" <<'PY'
import re
import sys

source_path, output_path = sys.argv[1:3]
pattern = re.compile(r"^\s*%\s*critical-note:\s*([^|]+)\|([^|]+)\|([^|]+)\|(.*)$")
seen = set()
rows = []

with open(source_path, encoding="utf-8") as source:
    for line_number, line in enumerate(source, 1):
        match = pattern.match(line.rstrip("\n"))
        if not match:
            continue
        note_id, marker, location, text = [part.strip() for part in match.groups()]
        if not re.fullmatch(r"[A-Za-z0-9_-]+", note_id):
            raise SystemExit(f"{source_path}:{line_number}: invalid critical note id: {note_id}")
        if note_id in seen:
            raise SystemExit(f"{source_path}:{line_number}: duplicate critical note id: {note_id}")
        seen.add(note_id)
        rows.append((note_id, marker, location, text))

with open(output_path, "w", encoding="utf-8") as output:
    for row in rows:
        output.write("\t".join(row) + "\n")
PY
}

generate_extended_index_source() {
  local notes_tsv="$1"
  local index_source="$2"

  python3 - "$SRC_DIR/content.ly" "$notes_tsv" "$index_source" <<'PY'
import pathlib
import sys

content_path, notes_path, output_path = sys.argv[1:4]
notes = []
with open(notes_path, encoding="utf-8") as source:
    for line in source:
        if line.strip():
            notes.append(line.rstrip("\n").split("\t", 3))

body = r'''\version "2.24.1"

\include "%s"

extendedEditionSubtitle = "Extended critical edition"

extendedHeaderData = \header {
  title = \workTitle
  subtitle = \extendedEditionSubtitle
  composer = \workComposer
  opus = \workOpus
  date = \workDate
}

\book {
  \extendedHeaderData
  \editionCoverPage \workTitle \extendedEditionSubtitle \workComposer \workOpus
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \firstMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \secondMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \thirdMovement
    \defaultLayout
  }
  \pageBreak

  \score {
    \renderMovementForEdition #'extended \fourthMovement
    \defaultLayout
  }

  \pageBreak
  \markup \column {
    \line { "CRITICAL_NOTE_INDEX_START" }
''' % content_path.replace("\\", "\\\\")

for note_id, marker, location, text in notes:
    body += f'    \\line {{ "CRITICAL_NOTE_PAGE|{note_id}|" \\page-ref #\'{note_id} "?" "?" }}\n'

body += r'''    \line { "CRITICAL_NOTE_INDEX_END" }
  }

}
'''

pathlib.Path(output_path).write_text(body, encoding="utf-8")
PY
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
  pdftotext "$index_pdf" "$index_text"

  python3 - "$notes_tsv" "$index_text" "$music_pages" "$initial_pages" "$tex_file" <<'PY'
import collections
import pathlib
import re
import sys

notes_path, index_text_path, music_pages_raw, initial_pages_raw, tex_path = sys.argv[1:6]
music_pages = int(music_pages_raw)
initial_pages = int(initial_pages_raw)

notes = []
with open(notes_path, encoding="utf-8") as source:
    for line in source:
        if not line.strip():
            continue
        note_id, marker, location, text = line.rstrip("\n").split("\t", 3)
        notes.append((note_id, marker, location, text))

index_text = pathlib.Path(index_text_path).read_text(encoding="utf-8", errors="replace")
page_map = dict(re.findall(r"CRITICAL_NOTE_PAGE\|([A-Za-z0-9_-]+)\|\s*([0-9?]+)", index_text))

grouped = collections.defaultdict(list)
for note_id, marker, location, text in notes:
    page = page_map.get(note_id)
    if page is None:
        raise SystemExit(f"Critical note id was not found in the rendered page index: {note_id}")
    if page == "?":
        raise SystemExit(f"LilyPond could not resolve the page for critical note id: {note_id}")
    page_number = int(page)
    if page_number < 1 or page_number > music_pages:
        raise SystemExit(f"Critical note {note_id} resolved to page {page_number}, outside 1..{music_pages}")
    if page_number <= initial_pages:
        raise SystemExit(f"Critical note {note_id} resolved to initial page {page_number}")
    grouped[page_number].append((marker, location, text))

def tex_escape(value):
    replacements = {
        "\\": r"\textbackslash{}",
        "&": r"\&",
        "%": r"\%",
        "$": r"\$",
        "#": r"\#",
        "_": r"\_",
        "{": r"\{",
        "}": r"\}",
        "~": r"\textasciitilde{}",
        "^": r"\textasciicircum{}",
    }
    return "".join(replacements.get(char, char) for char in value)

lines = [
    r"\documentclass[a4paper,10pt]{article}",
    r"\usepackage[T1]{fontenc}",
    r"\usepackage[utf8]{inputenc}",
    r"\usepackage[margin=18mm]{geometry}",
    r"\pagestyle{empty}",
    r"\setlength{\parindent}{0pt}",
    r"\setlength{\parskip}{7pt}",
    r"\begin{document}",
]

for page in range(initial_pages + 1, music_pages + 1):
    lines.append(r"\thispagestyle{empty}")
    if grouped.get(page):
        for marker, location, text in grouped[page]:
            lines.append(
                r"\noindent\textbf{%s}\quad\textit{%s}\par" %
                (tex_escape(marker), tex_escape(location))
            )
            lines.append(tex_escape(text) + r"\par")
    else:
        lines.append(r"\null")
    if page != music_pages:
        lines.append(r"\newpage")

lines.append(r"\end{document}")
pathlib.Path(tex_path).write_text("\n".join(lines) + "\n", encoding="utf-8")
PY
}

compile_latex_pdf() {
  local tex_file="$1"
  local output_dir="$2"

  mkdir -p "$output_dir"
  pdflatex -interaction=nonstopmode -halt-on-error -output-directory "$output_dir" "$tex_file" >/dev/null
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

  pdfunite "${parts[@]}" "$output_pdf"
}

prepare_build_dir
ensure_base_tools
ensure_musescore

build_lilypond_view main main
build_lilypond_debug_view main main-debug
build_lilypond_view urtext urtext
build_lilypond_view extended extended-music

cp "${RUN_DIR}/main/main.pdf" "${OUT_DIR}/main.pdf"
cp "${RUN_DIR}/main/main.midi" "${OUT_DIR}/main.midi"
cp "${RUN_DIR}/main-debug/main-debug.pdf" "${OUT_DIR}/main-debug.pdf"
cp "${RUN_DIR}/urtext/urtext.pdf" "${OUT_DIR}/urtext.pdf"

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
assemble_extended_pdf "$MUSIC_PDF" "${NOTES_DIR}/extended-notes.pdf" "${OUT_DIR}/extended.pdf" "$MUSIC_PAGES" "$EXTENDED_INITIAL_PAGES"

log "Rendering main.wav with MuseScore"
WAV_RENDER="${RUN_DIR}/main-render.wav"
run_musescore_export "${OUT_DIR}/main.midi" "$WAV_RENDER"
cp "$WAV_RENDER" "${OUT_DIR}/main.wav"

log "Done"
