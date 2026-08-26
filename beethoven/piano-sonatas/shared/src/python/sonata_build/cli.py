from __future__ import annotations

import argparse
import sys
from pathlib import Path
from typing import Optional, Sequence

from .context import BuildContext
from .pipeline import SonataBuilder
from .system import BuildError


def main(project_dir: Path, argv: Optional[Sequence[str]] = None) -> int:
    parser = argparse.ArgumentParser(prog="build.py")
    parser.add_argument(
        "--quick",
        action="store_true",
        help="build only the source-linked pragmatic score",
    )
    arguments = parser.parse_args(argv)
    return run(project_dir, quick=arguments.quick)


def module_main(argv: Optional[Sequence[str]] = None) -> int:
    parser = argparse.ArgumentParser(prog="python3 -m sonata_build")
    parser.add_argument("project_dir", type=Path, help="sonata project directory")
    parser.add_argument(
        "--quick",
        action="store_true",
        help="build only the source-linked pragmatic score",
    )
    arguments = parser.parse_args(argv)
    return run(arguments.project_dir, quick=arguments.quick)


def run(project_dir: Path, *, quick: bool) -> int:
    try:
        context = BuildContext.for_project(project_dir)
        SonataBuilder(context).build(quick=quick)
    except (BuildError, OSError, ValueError) as exc:
        print(f"[build] error: {exc}", file=sys.stderr)
        return 1
    return 0
