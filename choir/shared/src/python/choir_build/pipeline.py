from __future__ import annotations

import shutil
from pathlib import Path
from typing import Iterable, Optional

from .context import BuildContext
from .dependencies import DependencyChecker
from .engraving import generate_view_source
from .system import BuildError, CommandRunner, log, remove_path


FULL_ARTIFACTS = {
    "main-debug.pdf",
    "main.midi",
    "main.pdf",
    "main.wav",
}


class ChoirBuilder:
    def __init__(self, context: BuildContext) -> None:
        self.context = context
        self.runner = CommandRunner()
        self.dependencies = DependencyChecker(
            self.runner, str(context.project_dir / "install.sh")
        )

    def build(
        self, *, quick: bool = False, transpose: Optional[tuple[str, str]] = None, scale: int = 0
    ) -> None:
        self.dependencies.require_base_tools()
        if quick:
            self.prepare_build_directory()
            self.build_quick(transpose=transpose, scale=scale)
        else:
            soundfont = self.dependencies.require_audio_tools()
            self.prepare_build_directory()
            self.build_full(soundfont, transpose=transpose, scale=scale)
        log("Done")

    def prepare_build_directory(self) -> None:
        remove_path(self.context.build_dir)
        self.context.stage_dir.mkdir(parents=True)

    def build_quick(self, *, transpose: Optional[tuple[str, str]], scale: int = 0) -> None:
        source = self.context.run_dir / "main-debug.ly"
        generate_view_source(
            self.context, source, debug=True, midi=False, transpose=transpose, scale=scale
        )
        debug_pdf = self.build_lilypond_source(
            source, "main-debug", point_and_click=True
        )
        shutil.copy2(debug_pdf, self.context.stage_dir / "main-debug.pdf")
        self.verify_staged_artifacts({"main-debug.pdf"})
        self.publish_output()

    def build_full(
        self, soundfont: Path, *, transpose: Optional[tuple[str, str]], scale: int = 0
    ) -> None:
        main_source = self.context.run_dir / "main.ly"
        debug_source = self.context.run_dir / "main-debug.ly"
        generate_view_source(
            self.context, main_source, debug=False, midi=True, transpose=transpose, scale=scale
        )
        generate_view_source(
            self.context, debug_source, debug=True, midi=False, transpose=transpose, scale=scale
        )

        main_pdf = self.build_lilypond_source(main_source, "main")
        debug_pdf = self.build_lilypond_source(
            debug_source, "main-debug", point_and_click=True
        )
        for source, target in {
            main_pdf: self.context.stage_dir / "main.pdf",
            self.context.run_dir / "main" / "main.midi": self.context.stage_dir / "main.midi",
            debug_pdf: self.context.stage_dir / "main-debug.pdf",
        }.items():
            shutil.copy2(source, target)
        self.render_audio(soundfont)
        self.verify_staged_artifacts(FULL_ARTIFACTS)
        self.publish_output()

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

    def build_lilypond_source(
        self, source: Path, output_name: str, *, point_and_click: bool = False
    ) -> Path:
        output_dir = self.context.run_dir / output_name
        output_dir.mkdir(parents=True, exist_ok=True)
        suffix = " with source links" if point_and_click else ""
        log(f"Engraving {output_name}{suffix}")
        command: list[object] = ["lilypond"]
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
