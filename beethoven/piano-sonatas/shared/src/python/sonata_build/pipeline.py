from __future__ import annotations

import shutil
from pathlib import Path
from typing import Iterable, List, Optional, Sequence

from .context import BuildContext
from .engraving import (
    CriticalNote,
    extract_critical_notes,
    generate_bare_view_source,
    generate_extended_index_source,
    generate_publication_view_source,
)
from .dependencies import DependencyChecker
from .publication import PdfAssembler
from .system import (
    BuildError,
    CommandRunner,
    log,
    remove_path,
)


FULL_ARTIFACTS = {
    "extended-bare.pdf",
    "extended.pdf",
    "main-bare.pdf",
    "main-debug.pdf",
    "main.midi",
    "main.pdf",
    "main.wav",
    "urtext-bare.pdf",
    "urtext.pdf",
}


class SonataBuilder:
    def __init__(self, context: BuildContext) -> None:
        self.context = context
        self.runner = CommandRunner()
        self.dependencies = DependencyChecker(
            self.runner, str(context.project_dir / "install.sh")
        )
        self.pdf = PdfAssembler(context, self.runner)

    def build(self, *, quick: bool = False, layout: bool = True) -> None:
        self.dependencies.require_base_tools()
        if quick:
            self.prepare_build_directory()
            self.build_quick(layout=layout)
        else:
            soundfont = self.dependencies.require_audio_tools()
            self.prepare_build_directory()
            self.build_full(soundfont, layout=layout)
        log("Done")

    def prepare_build_directory(self) -> None:
        remove_path(self.context.build_dir)
        self.context.stage_dir.mkdir(parents=True)

    def build_quick(self, *, layout: bool = True) -> None:
        source = self.context.run_dir / "main-debug.ly"
        generate_bare_view_source(self.context.source_dir, "main-debug", source, layout=layout)
        debug_pdf = self.build_lilypond_source(
            source, "main-debug", point_and_click=True
        )
        shutil.copy2(debug_pdf, self.context.stage_dir / "main-debug.pdf")
        self.verify_staged_artifacts({"main-debug.pdf"})
        self.publish_output()

    def build_full(self, soundfont: Path, *, layout: bool = True) -> None:
        run_dir = self.context.run_dir
        stage_dir = self.context.stage_dir
        generated_sources = {
            edition: run_dir / f"{edition}-bare.ly"
            for edition in ("main", "urtext", "extended")
        }
        generated_sources["main-debug"] = run_dir / "main-debug.ly"
        for edition, source in generated_sources.items():
            generate_bare_view_source(self.context.source_dir, edition, source, layout=layout)
        publication_sources = {
            edition: run_dir / f"{edition}.ly"
            for edition in ("main", "urtext", "extended")
        }
        for edition, source in publication_sources.items():
            generate_publication_view_source(self.context.source_dir, edition, source, layout=layout)

        main_pdf = self.build_lilypond_source(publication_sources["main"], "main")
        main_bare_pdf = self.build_lilypond_source(
            generated_sources["main"], "main-bare"
        )
        main_debug_pdf = self.build_lilypond_source(
            generated_sources["main-debug"], "main-debug", point_and_click=True
        )
        urtext_pdf = self.build_lilypond_source(
            publication_sources["urtext"], "urtext"
        )
        urtext_bare_pdf = self.build_lilypond_source(
            generated_sources["urtext"], "urtext-bare"
        )
        extended_music_pdf = self.build_lilypond_source(
            publication_sources["extended"], "extended-music", label="extended"
        )
        extended_bare_music_pdf = self.build_lilypond_source(
            generated_sources["extended"], "extended-bare-music"
        )

        copy_targets = {
            run_dir / "main" / "main.midi": stage_dir / "main.midi",
            main_bare_pdf: stage_dir / "main-bare.pdf",
            main_debug_pdf: stage_dir / "main-debug.pdf",
            urtext_bare_pdf: stage_dir / "urtext-bare.pdf",
        }
        for source, target in copy_targets.items():
            shutil.copy2(source, target)

        notes = extract_critical_notes(self.context.source_dir)
        extended_body_pdf = self.build_extended_edition(
            notes,
            extended_music_pdf,
            initial_pages=self.context.extended_initial_pages,
            name="extended",
            layout=layout,
        )
        extended_bare_pdf = self.build_extended_edition(
            notes,
            extended_bare_music_pdf,
            initial_pages=0,
            name="extended-bare",
            layout=layout,
        )
        shutil.copy2(extended_bare_pdf, stage_dir / "extended-bare.pdf")
        self.pdf.copy_pdf_metadata(
            extended_bare_music_pdf, stage_dir / "extended-bare.pdf"
        )

        self.assemble_publications(
            main_pdf, urtext_pdf, extended_music_pdf, extended_body_pdf
        )
        self.render_audio(soundfont)
        self.verify_staged_artifacts(FULL_ARTIFACTS)
        self.publish_output()

    def assemble_publications(
        self,
        main_pdf: Path,
        urtext_pdf: Path,
        extended_music_pdf: Path,
        extended_body_pdf: Path,
    ) -> None:
        log("Assembling publication PDFs")
        publications = (
            (main_pdf, "main", "Pragmatic edition", main_pdf),
            (urtext_pdf, "urtext", "Urtext-ish edition", urtext_pdf),
            (
                extended_body_pdf,
                "extended",
                "Extended critical edition",
                extended_music_pdf,
            ),
        )
        for base_pdf, name, title, metadata_pdf in publications:
            self.pdf.assemble_publication_pdf(
                base_pdf,
                self.context.source_dir / f"appendix-{name}.tex",
                name,
                title,
                self.context.stage_dir / f"{name}.pdf",
                metadata_pdf,
            )

    def render_audio(self, soundfont: Path) -> None:
        log("Rendering main.wav with FluidSynth")
        log(f"Using soundfont: {soundfont}")
        wav_render = self.context.run_dir / "main-render.wav"
        self.runner.run(
            [
                "fluidsynth",
                "-ni",
                "-F",
                wav_render,
                "-r",
                "44100",
                soundfont,
                self.context.stage_dir / "main.midi",
            ],
            cwd=self.context.project_dir,
        )
        shutil.copy2(wav_render, self.context.stage_dir / "main.wav")

    def build_extended_edition(
        self,
        notes: Sequence[CriticalNote],
        music_pdf: Path,
        *,
        initial_pages: int,
        name: str,
        layout: bool = True,
    ) -> Path:
        index_source = self.context.run_dir / f"{name}-index.ly"
        index_dir = self.context.run_dir / f"{name}-index"
        notes_source = self.context.run_dir / f"{name}-notes.tex"
        notes_dir = self.context.run_dir / f"{name}-notes"
        generate_extended_index_source(
            self.context.source_dir, notes, index_source, initial_pages, layout=layout
        )

        index_dir.mkdir(parents=True, exist_ok=True)
        label = "bare critical note pages" if initial_pages == 0 else "critical note pages"
        log(f"Resolving {label}")
        self.runner.run(
            [
                "lilypond",
                "-dno-point-and-click",
                "-o",
                index_dir / f"{name}-index",
                index_source,
            ],
            cwd=self.context.project_dir,
        )

        music_pages = self.pdf.pdf_pages(music_pdf)
        self.pdf.generate_note_pages(
            notes,
            index_dir / f"{name}-index.pdf",
            music_pages,
            initial_pages,
            notes_source,
            name,
        )
        notes_pdf = self.pdf.compile_latex(notes_source, notes_dir)
        output = self.context.run_dir / f"{name}.pdf"
        self.pdf.assemble_extended_pdf(
            music_pdf, notes_pdf, output, music_pages, initial_pages, name
        )
        return output

    def build_lilypond_view(self, view_name: str, output_name: str) -> Path:
        return self.build_lilypond_source(
            self.context.source_dir / f"{view_name}.ly",
            output_name,
            label=view_name,
        )

    def build_lilypond_source(
        self,
        source: Path,
        output_name: str,
        *,
        point_and_click: bool = False,
        label: Optional[str] = None,
    ) -> Path:
        output_dir = self.context.run_dir / output_name
        output_dir.mkdir(parents=True, exist_ok=True)
        suffix = " with source links" if point_and_click else ""
        log(f"Engraving {label or output_name}{suffix}")
        command: List[object] = ["lilypond"]
        if not point_and_click:
            command.append("-dno-point-and-click")
        command.extend(["-o", output_dir / output_name, source])
        self.runner.run(command, cwd=self.context.project_dir)
        pdf = output_dir / f"{output_name}.pdf"
        if not pdf.is_file():
            raise BuildError(f"LilyPond did not produce the expected PDF: {pdf}")
        return pdf

    def publish_output(self) -> None:
        stage = self.context.stage_dir
        output = self.context.output_dir
        backup = self.context.build_dir / "previous-out"
        if not stage.is_dir():
            raise BuildError(f"Staged output directory does not exist: {stage}")

        remove_path(backup)
        moved_existing = False
        if output.exists() or output.is_symlink():
            output.rename(backup)
            moved_existing = True
        try:
            stage.rename(output)
        except Exception:
            if moved_existing and not output.exists():
                backup.rename(output)
            raise
        remove_path(backup)

    def verify_staged_artifacts(self, expected: Iterable[str]) -> None:
        actual = {path.name for path in self.context.stage_dir.iterdir() if path.is_file()}
        expected_set = set(expected)
        if actual == expected_set:
            return
        missing = sorted(expected_set - actual)
        unexpected = sorted(actual - expected_set)
        details = []
        if missing:
            details.append(f"missing: {', '.join(missing)}")
        if unexpected:
            details.append(f"unexpected: {', '.join(unexpected)}")
        raise BuildError(f"Inconsistent staged output ({'; '.join(details)})")
