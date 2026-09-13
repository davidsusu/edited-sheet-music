from __future__ import annotations

import argparse
import os
import sys
from typing import List, Optional, Sequence

from .dependencies import DependencyChecker, select_fluidsynth_soundfont
from .system import BuildError, CommandRunner


class DependencyInstaller:
    def __init__(self) -> None:
        self.runner = CommandRunner()
        self.checker = DependencyChecker(self.runner, "install.py")

    def install(self) -> None:
        packages = self.missing_debian_packages()
        if not packages:
            print("[install] All dependencies are already installed.", flush=True)
            return

        if not self.checker.command_exists("apt-get"):
            raise BuildError(
                "Automatic installation is supported only on Debian-based systems. "
                f"Missing packages: {', '.join(packages)}"
            )

        prefix = []
        if os.geteuid() != 0:
            if not self.checker.command_exists("sudo"):
                raise BuildError(
                    "sudo is required to install system dependencies. "
                    f"Missing packages: {', '.join(packages)}"
                )
            prefix = ["sudo"]

        print("[install] Updating package metadata", flush=True)
        self.runner.run([*prefix, "apt-get", "update"])
        print(f"[install] Installing: {' '.join(packages)}", flush=True)
        environment = os.environ.copy()
        environment["DEBIAN_FRONTEND"] = "noninteractive"
        self.runner.run(
            [*prefix, "apt-get", "install", "-y", *packages], env=environment
        )

        self.checker.require_base_tools()
        self.checker.require_audio_tools()
        print("[install] Done", flush=True)

    def missing_debian_packages(self) -> List[str]:
        packages = []

        def add(*names: str) -> None:
            for name in names:
                if name not in packages:
                    packages.append(name)

        if not self.checker.command_exists("lilypond"):
            add("lilypond")
        if not self.checker.command_exists("fluidsynth"):
            add("fluidsynth")
        if select_fluidsynth_soundfont(self.runner) is None:
            add("fluid-soundfont-gm")
        return packages


def main(argv: Optional[Sequence[str]] = None) -> int:
    parser = argparse.ArgumentParser(
        prog="install.py", description="install the choir build dependencies"
    )
    parser.parse_args(argv)
    try:
        DependencyInstaller().install()
    except (BuildError, OSError) as exc:
        print(f"[install] error: {exc}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
