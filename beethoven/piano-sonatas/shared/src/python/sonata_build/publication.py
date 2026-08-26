from __future__ import annotations

import re
import subprocess
from pathlib import Path
from typing import Dict, List, Sequence

from .context import BuildContext
from .engraving import CriticalNote
from .system import BuildError, CommandRunner, write_text


class PdfAssembler:
    def __init__(self, context: BuildContext, runner: CommandRunner) -> None:
        self.context = context
        self.runner = runner

    def generate_note_pages(
        self,
        notes: Sequence[CriticalNote],
        index_pdf: Path,
        music_pages: int,
        initial_pages: int,
        output: Path,
        name: str,
    ) -> None:
        index_text = self.context.run_dir / f"{name}-critical-index.txt"
        self.runner.run(["pdftotext", index_pdf, index_text])
        rendered = index_text.read_text(encoding="utf-8", errors="replace")
        page_map = {
            note_id: page
            for note_id, page in re.findall(
                r"CRITICAL_NOTE_PAGE\|([A-Za-z0-9_-]+)\|\s*([0-9?]+)",
                rendered.replace("\n", " ").replace("\f", " ").replace("\r", " "),
            )
        }

        notes_by_page: Dict[int, List[CriticalNote]] = {}
        for note in notes:
            resolved = page_map.get(note.note_id)
            if resolved is None:
                raise BuildError(
                    "Critical note id was not found in the rendered page index: "
                    f"{note.note_id}"
                )
            if resolved == "?":
                raise BuildError(
                    f"LilyPond could not resolve the page for critical note id: {note.note_id}"
                )
            page = int(resolved)
            if not 1 <= page <= music_pages:
                raise BuildError(
                    f"Critical note {note.note_id} resolved to page {page}, "
                    f"outside 1..{music_pages}"
                )
            if page <= initial_pages:
                raise BuildError(
                    f"Critical note {note.note_id} resolved to initial page {page}"
                )
            notes_by_page.setdefault(page, []).append(note)

        sections = [latex_document_header()]
        for page in range(initial_pages + 1, music_pages + 1):
            score_display_page = 2 * page - initial_pages - 1
            note_display_page = score_display_page + 1
            sections.extend(
                [
                    f"\\setcounter{{page}}{{{note_display_page}}}\n",
                    "\\fancyhf{}\n",
                    "\\fancyhead[LO]{\\small Extended critical edition}\n",
                    "\\fancyhead[RO]{\\thepage}\n",
                    f"\\section*{{Editorial notes to page {score_display_page}}}\n",
                    "\\begin{multicols}{2}\n",
                    "\\raggedright\n",
                ]
            )
            page_notes = notes_by_page.get(page, [])
            if page_notes:
                for note in page_notes:
                    sections.append(
                        f"\\noindent\\textbf{{{tex_escape(note.marker)}}}"
                        f"\\quad\\textit{{{tex_escape(note.location)}}}\\par\n"
                    )
                    sections.append(f"{tex_escape(note.text)}\\par\n")
            else:
                sections.append("\\null\n")
            sections.append("\\end{multicols}\n")
            if page != music_pages:
                sections.append("\\newpage\n")
        sections.append("\\end{document}\n")
        write_text(output, "".join(sections))

    def compile_latex(self, source: Path, output_dir: Path) -> Path:
        output_dir.mkdir(parents=True, exist_ok=True)
        self.runner.run(
            [
                "pdflatex",
                "-interaction=nonstopmode",
                "-halt-on-error",
                "-output-directory",
                output_dir,
                source,
            ],
            cwd=self.context.project_dir,
            stdout=subprocess.DEVNULL,
        )
        pdf = output_dir / f"{source.stem}.pdf"
        if not pdf.is_file():
            raise BuildError(f"LaTeX did not produce the expected PDF: {pdf}")
        return pdf

    def assemble_publication_pdf(
        self,
        base_pdf: Path,
        appendix_body: Path,
        edition_name: str,
        edition_title: str,
        output_pdf: Path,
        metadata_pdf: Path,
    ) -> None:
        appendix_dir = self.context.run_dir / f"{edition_name}-appendix"
        appendix_source = self.context.run_dir / f"{edition_name}-appendix.tex"
        base_pages = self.pdf_pages(base_pdf)
        first_appendix_page = base_pages + 1
        parts = [base_pdf]
        if first_appendix_page % 2 == 0:
            parts.append(self.ensure_blank_page_pdf())
            first_appendix_page += 1

        self.generate_appendix_source(
            appendix_body, edition_title, first_appendix_page, appendix_source
        )
        parts.append(self.compile_latex(appendix_source, appendix_dir))
        self.combine_pdfs(output_pdf, parts, preserve_annotations=False)
        self.copy_pdf_metadata(metadata_pdf, output_pdf)

    def assemble_extended_pdf(
        self,
        music_pdf: Path,
        notes_pdf: Path,
        output_pdf: Path,
        music_pages: int,
        initial_pages: int,
        name: str,
    ) -> None:
        score_pages = music_pages - initial_pages
        note_pages = self.pdf_pages(notes_pdf)
        if note_pages != score_pages:
            raise BuildError(
                f"Note pages overflowed: expected {score_pages}, got {note_pages}."
            )

        music_pattern = self.context.run_dir / f"{name}-music-page-%d.pdf"
        notes_pattern = self.context.run_dir / f"{name}-notes-page-%d.pdf"
        self.runner.run(["pdfseparate", music_pdf, music_pattern])
        self.runner.run(["pdfseparate", notes_pdf, notes_pattern])

        parts = [
            self.context.run_dir / f"{name}-music-page-{page}.pdf"
            for page in range(1, initial_pages + 1)
        ]
        for page in range(initial_pages + 1, music_pages + 1):
            parts.append(self.context.run_dir / f"{name}-music-page-{page}.pdf")
            parts.append(
                self.context.run_dir
                / f"{name}-notes-page-{page - initial_pages}.pdf"
            )
        self.combine_pdfs(output_pdf, parts, preserve_annotations=False)

    def copy_pdf_metadata(self, source: Path, target: Path) -> None:
        self.runner.run(
            [
                "exiftool",
                "-overwrite_original",
                "-TagsFromFile",
                source,
                "-all:all",
                target,
            ],
            stdout=subprocess.DEVNULL,
        )

    def pdf_pages(self, pdf: Path) -> int:
        output = self.runner.capture(["pdfinfo", pdf])
        match = re.search(r"^Pages:\s+(\d+)\s*$", output, re.MULTILINE)
        if match is None:
            raise BuildError(f"Could not determine PDF page count: {pdf}")
        return int(match.group(1))

    def combine_pdfs(
        self, output: Path, inputs: Sequence[Path], *, preserve_annotations: bool
    ) -> None:
        expected_pages = sum(self.pdf_pages(pdf) for pdf in inputs)
        self.runner.run(
            [
                "gs",
                "-q",
                "-dSAFER",
                "-dBATCH",
                "-dNOPAUSE",
                "-sDEVICE=pdfwrite",
                "-dCompatibilityLevel=1.5",
                "-dAutoRotatePages=/None",
                f"-dPreserveAnnots={'true' if preserve_annotations else 'false'}",
                f"-sOutputFile={output}",
                *inputs,
            ],
            cwd=self.context.project_dir,
        )
        actual_pages = self.pdf_pages(output)
        if actual_pages != expected_pages:
            raise BuildError(
                f"PDF assembly failed: expected {expected_pages} pages, "
                f"got {actual_pages}."
            )

    def generate_appendix_source(
        self,
        body: Path,
        edition_title: str,
        first_page: int,
        output: Path,
    ) -> None:
        if not body.is_file():
            raise BuildError(f"Appendix source does not exist: {body}")
        document = f"""\\documentclass[a4paper,10pt,twoside]{{article}}
\\usepackage[T1]{{fontenc}}
\\usepackage[utf8]{{inputenc}}
\\usepackage[margin=18mm,headheight=14pt,headsep=6mm]{{geometry}}
\\usepackage{{fancyhdr}}
\\usepackage{{graphicx}}
\\usepackage{{microtype}}
\\usepackage{{multicol}}
\\usepackage{{tgschola}}
\\setlength{{\\parindent}}{{0pt}}
\\setlength{{\\parskip}}{{7pt}}
\\setlength{{\\columnsep}}{{8mm}}
\\raggedcolumns
\\fancyhf{{}}
\\fancyhead[LE,RO]{{\\thepage}}
\\fancyhead[LO,RE]{{\\small {tex_escape(edition_title)}}}
\\pagestyle{{fancy}}
\\begin{{document}}
\\setcounter{{page}}{{{first_page}}}
\\section*{{Editorial appendix}}
\\begin{{multicols*}}{{2}}
\\raggedright
\\input{{{body}}}
\\end{{multicols*}}
\\end{{document}}
"""
        write_text(output, document)

    def ensure_blank_page_pdf(self) -> Path:
        source = self.context.run_dir / "blank-page.tex"
        output_dir = self.context.run_dir / "blank-page"
        pdf = output_dir / "blank-page.pdf"
        if pdf.is_file():
            return pdf
        write_text(
            source,
            """\\documentclass[a4paper]{article}
\\usepackage[margin=0mm]{geometry}
\\pagestyle{empty}
\\begin{document}
\\null
\\end{document}
""",
        )
        return self.compile_latex(source, output_dir)


def tex_escape(value: object) -> str:
    replacements = {
        "\\": "\\textbackslash{}",
        "&": "\\&",
        "%": "\\%",
        "$": "\\$",
        "#": "\\#",
        "_": "\\_",
        "{": "\\{",
        "}": "\\}",
        "~": "\\textasciitilde{}",
        "^": "\\textasciicircum{}",
    }
    return "".join(replacements.get(character, character) for character in str(value))


def latex_document_header() -> str:
    return """\\documentclass[a4paper,10pt,twoside]{article}
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
\\begin{document}
"""
