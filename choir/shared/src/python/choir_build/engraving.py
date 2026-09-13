from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path
from typing import List, Optional

from .context import BuildContext
from .system import BuildError, write_text


@dataclass(frozen=True)
class VoiceSpec:
    tag: str
    name: str
    short_name: str


def extract_voice_specs(source_dir: Path) -> List[VoiceSpec]:
    source = source_dir / "content.ly"
    text = source.read_text(encoding="utf-8")
    match = re.search(r"(?m)^voiceSpecs\s*=\s*#'\s*\(\s*\n(.*?)^\s*\)\s*$", text, re.S)
    if match is None:
        raise BuildError(f"{source}: missing voiceSpecs manifest")

    item = re.compile(
        r'^\s*\(([A-Za-z][A-Za-z0-9_-]*)\s+"((?:[^"\\]|\\.)*)"\s+'
        r'"((?:[^"\\]|\\.)*)"\)\s*$',
        re.M,
    )
    specs = [
        VoiceSpec(
            item_match.group(1),
            lilypond_string_unescape(item_match.group(2)),
            lilypond_string_unescape(item_match.group(3)),
        )
        for item_match in item.finditer(match.group(1))
    ]
    if not specs:
        raise BuildError(f"{source}: voiceSpecs contains no voices")

    consumed = item.sub("", match.group(1)).strip()
    if consumed:
        raise BuildError(f"{source}: invalid voiceSpecs item near: {consumed[:80]}")
    return specs


def generate_view_source(
    context: BuildContext,
    output: Path,
    *,
    debug: bool,
    midi: bool,
    transpose: Optional[tuple[str, str]],
) -> None:
    content_path = lilypond_string_escape(context.source_dir / "content.ly")
    subject = work_subject = "Score"
    if transpose is not None:
        subject = f"{work_subject}, transposed {transpose[0]}/{transpose[1]}"

    sections = [
        '\\version "2.24.1"\n\n',
        f'\\include "{content_path}"\n\n',
        f'buildPdfSubject = "{lilypond_string_escape(subject)}"\n\n',
    ]
    append_transpose_function(sections, transpose)
    sections.append(
"""buildHeaderData = \\header {
  title = \\workTitle
  composer = \\workComposer
  date = \\workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \\buildPdfSubject
}

\\book {
  \\choirPaper
  \\buildHeaderData

  \\score {
"""
    )
    append_choir_staff(sections, context.source_dir, debug=debug)
    sections.append(
        """
    \\choirLayout
"""
    )
    if midi:
        sections.append("    \\midi { }\n")
    sections.append("  }\n}\n")
    write_text(output, "".join(sections))


def append_transpose_function(
    sections: List[str], transpose: Optional[tuple[str, str]]
) -> None:
    if transpose is None:
        sections.append(
            """transposeMusic =
#(define-music-function (music) (ly:music?)
#{
  $music
#})

"""
        )
        return

    source, target = transpose
    sections.append(
        f"""transposeMusic =
#(define-music-function (music) (ly:music?)
#{{ 
  \\transpose {source} {target} $music
#}})

"""
    )


def append_choir_staff(
    sections: List[str], source_dir: Path, *, debug: bool
) -> None:
    keep_tags = "#(list '{tag} 'global 'debug)" if debug else "#(list '{tag} 'global)"
    sections.append("    <<\n      \\new ChoirStaff <<\n")
    for spec in extract_voice_specs(source_dir):
        tag_expression = keep_tags.format(tag=spec.tag)
        sections.extend(
            [
                f'        \\new Staff = "{spec.tag}" \\with {{\n',
                f'          instrumentName = "{lilypond_string_escape(spec.name)}"\n',
                f'          shortInstrumentName = "{lilypond_string_escape(spec.short_name)}"\n',
                '          midiInstrument = "choir aahs"\n',
                "        } <<\n",
                f'          \\new Voice = "{spec.tag}" {{\n',
                f"            \\transposeMusic \\keepWithTag {tag_expression} \\scoreMusic\n",
                "          }\n",
                "        >>\n",
            ]
        )
        sections.extend(
            [
                f'        \\new Lyrics \\lyricsto "{spec.tag}" {{\n',
                "          \\set ignoreMelismata = ##t\n",
                f"          \\extractLyrics #'{spec.tag} \\scoreMusic\n",
                "        }\n",
            ]
        )
    sections.append("      >>\n    >>\n")


def parse_transpose(value: str) -> tuple[str, str]:
    parts = value.split("/", 1)
    if len(parts) != 2:
        raise BuildError("Transpose must use from/to syntax, for example: a/es")
    source, target = (part.strip() for part in parts)
    pitch = re.compile(
        r"^(?:[cdefgab](?:isis|is)?|"
        r"ceses|deses|eses|feses|geses|ases|beses|"
        r"ces|des|es|fes|ges|as|bes)[,']*$"
    )
    if pitch.fullmatch(source) is None or pitch.fullmatch(target) is None:
        raise BuildError(f"Invalid transpose value: {value}")
    return source, target


def lilypond_string_escape(value: object) -> str:
    return str(value).replace("\\", "\\\\").replace('"', '\\"')


def lilypond_string_unescape(value: str) -> str:
    return value.replace(r"\\", "\\").replace(r"\"", '"')
