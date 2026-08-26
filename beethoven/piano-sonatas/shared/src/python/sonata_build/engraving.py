from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path
from typing import List, Sequence

from .system import BuildError, write_text


MOVEMENTS = ("firstMovement", "secondMovement", "thirdMovement", "fourthMovement")


@dataclass(frozen=True)
class CriticalNote:
    note_id: str
    marker: str
    location: str
    text: str


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


def generate_bare_view_source(
    source_dir: Path, edition_name: str, output: Path
) -> None:
    try:
        edition = BARE_EDITIONS[edition_name]
    except KeyError as exc:
        raise BuildError(f"Unknown bare edition: {edition_name}") from exc

    content_path = lilypond_string_escape(source_dir / "content.ly")
    sections = [
        '\\version "2.24.1"\n\n',
        f'\\include "{content_path}"\n\n',
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
    for movement in MOVEMENTS:
        sections.append("\n  \\bookpart {\n")
        if edition_name == "extended":
            sections.append("    \\extendedBareMusicPaper\n")
        sections.extend(
            [
                "    \\score {\n",
                f"      \\renderMovementForEdition #'{edition.render_edition} \\{movement}\n",
                f"      \\{edition.layout}\n",
                "    }\n",
                "  }\n",
            ]
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
) -> None:
    content_path = lilypond_string_escape(source_dir / "content.ly")
    sections = [
        '\\version "2.24.1"\n\n',
        f'\\include "{content_path}"\n\n',
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
    for movement in MOVEMENTS:
        sections.append("\n  \\bookpart {\n")
        if initial_pages:
            sections.append("    \\extendedMusicPaper\n")
        sections.extend(
            [
                "    \\score {\n",
                f"      \\renderMovementForEdition #'extended \\{movement}\n",
                "      \\defaultLayout\n",
                "    }\n",
                "  }\n",
            ]
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
