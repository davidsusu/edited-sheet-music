from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path
from typing import List, Sequence

from .system import BuildError, write_text


@dataclass(frozen=True)
class CriticalNote:
    note_id: str
    marker: str
    location: str
    text: str


@dataclass(frozen=True)
class MovementSpec:
    music: str
    title: str


@dataclass(frozen=True)
class BareEdition:
    subtitle: str
    render_edition: str
    layout: str


BARE_EDITIONS = {
    "main": BareEdition("Pragmatic edition", "main", "defaultLayout"),
    "main-debug": BareEdition(
        "Pragmatic edition", "main-debug", "defaultLayout"
    ),
    "urtext": BareEdition("Urtext-ish edition", "urtext", "urtextLayout"),
    "extended": BareEdition(
        "Extended critical edition", "extended", "defaultLayout"
    ),
}


def extract_movement_specs(source_dir: Path) -> List[MovementSpec]:
    source = source_dir / "content.ly"
    text = source.read_text(encoding="utf-8")
    match = re.search(r"(?m)^movementSpecs\s*=\s*#'\s*\(\s*\n(.*?)^\s*\)\s*$", text, re.S)
    if match is None:
        raise BuildError(f"{source}: missing movementSpecs manifest")

    specs = []
    item = re.compile(r'^\s*\(([A-Za-z][A-Za-z0-9_-]*)\s+"((?:[^"\\]|\\.)*)"\)\s*$', re.M)
    for item_match in item.finditer(match.group(1)):
        specs.append(
            MovementSpec(
                item_match.group(1),
                lilypond_string_unescape(item_match.group(2)),
            )
        )
    if not specs:
        raise BuildError(f"{source}: movementSpecs contains no movements")

    consumed = item.sub("", match.group(1)).strip()
    if consumed:
        raise BuildError(f"{source}: invalid movementSpecs item near: {consumed[:80]}")
    return specs


def generate_publication_view_source(
    source_dir: Path, edition_name: str, output: Path, *, layout: bool = True
) -> None:
    try:
        edition = BARE_EDITIONS[edition_name]
    except KeyError as exc:
        raise BuildError(f"Unknown publication edition: {edition_name}") from exc
    if edition_name == "main-debug":
        raise BuildError("main-debug is a bare/debug edition only")

    content_path = lilypond_string_escape(source_dir / "content.ly")
    sections = [
        '\\version "2.24.1"\n\n',
        f'\\include "{content_path}"\n',
        f"#(set! build-use-layout {'#t' if layout else '#f'})\n",
    ]
    if edition_name == "main":
        rectify_path = lilypond_string_escape(
            source_dir.parent.parent / "shared/src/lilypond/rectify.ly"
        )
        sections.append(f'\\include "{rectify_path}"\n')
    header_name = f"{edition_name}HeaderData"
    subtitle_name = f"{edition_name}EditionSubtitle"
    sections.extend(
        [
            f'\n{subtitle_name} = "{edition.subtitle}"\n\n',
            f"""{header_name} = \\header {{
  title = \\workTitle
  subtitle = \\{subtitle_name}
  composer = \\workComposer
  opus = \\workOpus
  date = \\workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \\{subtitle_name}
}}

\\book {{
  \\{header_name}

  \\bookpart {{
    \\frontMatterPaper
    \\editionCoverPage \\workTitle \\{subtitle_name} \\workComposer \\workOpus
  }}

  \\bookpart {{
    \\frontMatterPaper
    \\editionInfoPage \\workTitle \\{subtitle_name} \\workComposer \\workOpus \\workDate \\workEditor
  }}
""",
        ]
    )
    if edition_name == "extended":
        sections.append(
            """
  \\bookpart {
    \\frontMatterPaper
    \\markup \\null
  }
"""
        )
    append_movement_bookparts(
        sections,
        source_dir,
        edition.render_edition,
        edition.layout,
        paper="extendedMusicPaper" if edition_name == "extended" else None,
    )
    if edition_name == "main":
        append_midi_score(sections, source_dir)
    sections.append("}\n")
    write_text(output, "".join(sections))


def generate_bare_view_source(
    source_dir: Path, edition_name: str, output: Path, *, layout: bool = True
) -> None:
    try:
        edition = BARE_EDITIONS[edition_name]
    except KeyError as exc:
        raise BuildError(f"Unknown bare edition: {edition_name}") from exc

    content_path = lilypond_string_escape(source_dir / "content.ly")
    sections = [
        '\\version "2.24.1"\n\n',
        f'\\include "{content_path}"\n\n',
        f"#(set! build-use-layout {'#t' if layout else '#f'})\n",
        f'bareEditionSubtitle = "{edition.subtitle}"\n\n',
        """bareHeaderData = \\header {
  title = \\workTitle
  subtitle = \\bareEditionSubtitle
  composer = \\workComposer
  opus = \\workOpus
  date = \\workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \\bareEditionSubtitle
}
""",
    ]
    if edition_name == "extended":
        sections.append(
            """
extendedBareMusicPaper = \\paper {
  oddHeaderMarkup = \\markup \\fill-line {
    \\facingScorePageNumber #0
    \\fromproperty #'header:instrument
    ""
  }
  evenHeaderMarkup = \\oddHeaderMarkup
}
"""
        )
    sections.append("\n\\book {\n  \\bareHeaderData\n")
    append_movement_bookparts(
        sections,
        source_dir,
        edition.render_edition,
        edition.layout,
        paper="extendedBareMusicPaper" if edition_name == "extended" else None,
    )
    sections.append("}\n")
    write_text(output, "".join(sections))


def extract_critical_notes(source_dir: Path) -> List[CriticalNote]:
    source = source_dir / "content.ly"
    prefix = re.compile(r"^\s*%\s*critical-note:\s*")
    valid_id = re.compile(r"^[A-Za-z0-9_-]+$")
    notes = []
    seen = set()
    for line_number, original in enumerate(
        source.read_text(encoding="utf-8").splitlines(), start=1
    ):
        match = prefix.match(original)
        if match is None:
            continue
        fields = original[match.end() :].split("|", 3)
        if len(fields) != 4:
            raise BuildError(f"{source}:{line_number}: invalid critical note")
        note_id, marker, location, text = (field.strip() for field in fields)
        if valid_id.fullmatch(note_id) is None:
            raise BuildError(
                f"{source}:{line_number}: invalid critical note id: {note_id}"
            )
        if note_id in seen:
            raise BuildError(
                f"{source}:{line_number}: duplicate critical note id: {note_id}"
            )
        seen.add(note_id)
        notes.append(CriticalNote(note_id, marker, location, text))
    return notes


def generate_extended_index_source(
    source_dir: Path,
    notes: Sequence[CriticalNote],
    output: Path,
    initial_pages: int,
    *,
    layout: bool = True,
) -> None:
    content_path = lilypond_string_escape(source_dir / "content.ly")
    sections = [
        '\\version "2.24.1"\n\n',
        f'\\include "{content_path}"\n\n',
        f"#(set! build-use-layout {'#t' if layout else '#f'})\n",
        """extendedEditionSubtitle = "Extended critical edition"

extendedHeaderData = \\header {
  title = \\workTitle
  subtitle = \\extendedEditionSubtitle
  composer = \\workComposer
  opus = \\workOpus
  date = \\workDate
  pdfauthor = #(string-append workComposer "; edited by " workEditor)
  pdfsubject = \\extendedEditionSubtitle
}

\\book {
  \\extendedHeaderData
""",
    ]
    if initial_pages:
        sections.append(
            """  \\bookpart {
    \\frontMatterPaper
    \\editionCoverPage \\workTitle \\extendedEditionSubtitle \\workComposer \\workOpus
  }

  \\bookpart {
    \\frontMatterPaper
    \\editionInfoPage \\workTitle \\extendedEditionSubtitle \\workComposer \\workOpus \\workDate \\workEditor
  }

  \\bookpart {
    \\frontMatterPaper
    \\markup \\null
  }
"""
        )
    else:
        sections.append(
            """
  \\paper {
    oddHeaderMarkup = \\markup \\fill-line {
      \\facingScorePageNumber #0
      \\fromproperty #'header:instrument
      ""
    }
    evenHeaderMarkup = \\oddHeaderMarkup
  }
"""
        )
    append_movement_bookparts(
        sections,
        source_dir,
        "extended",
        "defaultLayout",
        paper="extendedMusicPaper" if initial_pages else None,
    )
    sections.append(
        """

  \\bookpart {
    \\frontMatterPaper
    \\markup \\column {
      \\line { "CRITICAL_NOTE_INDEX_START" }
"""
    )
    for note in notes:
        sections.append(
            f'      \\line {{ "CRITICAL_NOTE_PAGE|{note.note_id}|" '
            f"\\page-ref #'{note.note_id} \"?\" \"?\" }}\n"
        )
    sections.append(
        """      \\line { "CRITICAL_NOTE_INDEX_END" }
    }
  }
}
"""
    )
    write_text(output, "".join(sections))


def lilypond_string_escape(value: object) -> str:
    return str(value).replace("\\", "\\\\").replace('"', '\\"')


def lilypond_string_unescape(value: str) -> str:
    return value.replace(r"\\", "\\").replace(r"\"", '"')


def append_movement_bookparts(
    sections: List[str],
    source_dir: Path,
    render_edition: str,
    layout: str,
    *,
    paper: str | None,
) -> None:
    for movement in extract_movement_specs(source_dir):
        sections.append("\n  \\bookpart {\n")
        if paper is not None:
            sections.append(f"    \\{paper}\n")
        sections.extend(
            [
                "    \\score {\n",
                f"      \\renderMovementForEdition #'{render_edition} \\{movement.music}\n",
                f"      \\{layout}\n",
                "    }\n",
                "  }\n",
            ]
        )


def append_midi_score(sections: List[str], source_dir: Path) -> None:
    movements = extract_movement_specs(source_dir)
    sections.append(
        """
  \\score {
    \\unfoldRepeats
    \\articulate
    \\rectify

    {
"""
    )
    for index, movement in enumerate(movements):
        if index:
            sections.append("      \\movementPause\n")
        sections.append(f"      \\renderMovementForMidi #'main \\{movement.music}\n")
    sections.append(
        """    }

    \\midi { }
  }
"""
    )
