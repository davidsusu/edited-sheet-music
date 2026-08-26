from __future__ import annotations

import fnmatch
import glob
import os
import shutil
from pathlib import Path
from typing import Iterable, List, Optional, Sequence

from .system import BuildError, CommandRunner


class DependencyChecker:
    def __init__(self, runner: CommandRunner, install_hint: str) -> None:
        self.runner = runner
        self.install_hint = install_hint

    @staticmethod
    def command_exists(name: str) -> bool:
        return shutil.which(name) is not None

    def require_base_tools(self) -> None:
        missing = self.missing_base_requirements()
        if missing:
            self._raise_missing(missing)

    def require_audio_tools(self) -> Path:
        missing = self.missing_audio_requirements()
        if missing:
            self._raise_missing(missing)
        soundfont = select_fluidsynth_soundfont(self.runner)
        if soundfont is None:
            raise BuildError("No FluidSynth-compatible sound font was found.")
        return soundfont

    def missing_base_requirements(self) -> List[str]:
        missing = []
        commands = (
            "lilypond",
            "fc-match",
            "pdflatex",
            "pdfinfo",
            "pdftotext",
            "pdfseparate",
            "gs",
            "exiftool",
        )
        for command in commands:
            if not self.command_exists(command):
                missing.append(command)

        if self.command_exists("fc-match"):
            family = self.runner.capture(
                ["fc-match", "-f", "%{family}", "FontAwesome"], check=False
            )
            if "FontAwesome" not in family:
                missing.append("FontAwesome font")
        else:
            missing.append("FontAwesome font")

        if not self.command_exists("kpsewhich") or not self.runner.capture(
            ["kpsewhich", "tgschola.sty"], check=False
        ).strip():
            missing.append("TeX package tgschola")
        return missing

    def missing_audio_requirements(self) -> List[str]:
        missing = []
        if not self.command_exists("fluidsynth"):
            missing.append("fluidsynth")
        if select_fluidsynth_soundfont(self.runner) is None:
            missing.append("FluidSynth-compatible sound font")
        return missing

    def _raise_missing(self, missing: Sequence[str]) -> None:
        raise BuildError(
            f"Missing build dependencies: {', '.join(missing)}. "
            f"Run {self.install_hint}."
        )


def _find_first_soundfont(root: Path, patterns: Sequence[str]) -> Optional[Path]:
    if not root.exists():
        return None

    lowered_patterns = tuple(pattern.lower() for pattern in patterns)
    candidates = []
    for directory, _, filenames in os.walk(root, onerror=lambda _: None):
        for filename in filenames:
            lowered = filename.lower()
            if any(fnmatch.fnmatchcase(lowered, pattern) for pattern in lowered_patterns):
                candidates.append(Path(directory) / filename)
    return min(candidates, key=lambda path: str(path)) if candidates else None


def _first_matching_soundfont(
    roots: Iterable[Path], pattern_groups: Sequence[Sequence[str]]
) -> Optional[Path]:
    for root in roots:
        for patterns in pattern_groups:
            candidate = _find_first_soundfont(root, patterns)
            if candidate is not None:
                return candidate
    return None


def select_fluidsynth_soundfont(runner: CommandRunner) -> Optional[Path]:
    home = Path.home()
    flatpak_location = runner.capture(
        ["flatpak", "info", "--show-location", "org.musescore.MuseScore"],
        check=False,
    ).strip()
    flatpak_roots = []
    if flatpak_location:
        flatpak_roots.append(Path(flatpak_location))
    flatpak_roots.extend(
        [
            home / ".local/share/flatpak/app/org.musescore.MuseScore",
            Path("/var/lib/flatpak/app/org.musescore.MuseScore"),
        ]
    )
    candidate = _first_matching_soundfont(
        flatpak_roots,
        [
            ("*general*.sf2", "*general*.sf3"),
            ("*musescore*.sf2", "*musescore*.sf3"),
            ("ms basic.sf2", "ms basic.sf3"),
            ("*.sf2", "*.sf3"),
        ],
    )
    if candidate is not None:
        return candidate

    root_patterns = [
        "/usr/share/mscore-*",
        "/usr/local/share/mscore-*",
        "/usr/share/musescore*",
        "/usr/local/share/musescore*",
        "/usr/share/sounds/sf2",
        "/usr/share/sounds/sf3",
        "/usr/share/soundfonts",
        "/usr/local/share/soundfonts",
        str(home / ".local/share/MuseScore"),
        str(home / "Documents/MuseScore*"),
    ]
    standard_roots = [
        Path(match)
        for pattern in root_patterns
        for match in sorted(glob.glob(pattern))
    ]
    candidate = _first_matching_soundfont(
        standard_roots,
        [
            (
                "*musescore*general*.sf2",
                "*musescore*general*.sf3",
                "*general*musescore*.sf2",
                "*general*musescore*.sf3",
            ),
            ("*general*.sf2", "*general*.sf3"),
            ("*musescore*.sf2", "*musescore*.sf3"),
            ("ms basic.sf2", "ms basic.sf3"),
        ],
    )
    if candidate is not None:
        return candidate

    for path in (
        "/usr/share/sounds/sf2/FluidR3_GM.sf2",
        "/usr/share/soundfonts/FluidR3_GM.sf2",
        "/usr/share/sounds/sf2/default-GM.sf2",
        "/usr/share/soundfonts/default-GM.sf2",
        "/usr/share/sounds/sf2/TimGM6mb.sf2",
        "/usr/share/soundfonts/TimGM6mb.sf2",
    ):
        candidate = Path(path)
        if candidate.is_file():
            return candidate

    return _first_matching_soundfont(
        (
            Path("/usr/share/sounds/sf2"),
            Path("/usr/share/sounds/sf3"),
            Path("/usr/share/soundfonts"),
            Path("/usr/local/share/soundfonts"),
        ),
        [("*.sf2", "*.sf3")],
    )
