from __future__ import annotations

import argparse
import sys
from pathlib import Path
from typing import Optional, Sequence

from .context import BuildContext
from .engraving import parse_scale, parse_transpose
from .pipeline import ChoirBuilder
from .system import BuildError


def main(project_dir: Path, argv: Optional[Sequence[str]] = None) -> int:
    parser = argparse.ArgumentParser(prog="build.py")
    parser.add_argument(
        "--quick",
        action="store_true",
        help="build only the source-linked debug score",
    )
    parser.add_argument(
        "--transpose",
        metavar="FROM/TO",
        help="transpose the generated score, for example: a/es",
    )
    parser.add_argument("--scale", metavar="FACTOR", default="1",
                        help="scale printed durations and meter by a power of two (e.g. 1/2 or 2); audio is unchanged")
    arguments = parser.parse_args(argv)
    return run(
        project_dir,
        quick=arguments.quick,
        transpose_value=arguments.transpose,
        scale_value=arguments.scale,
    )


def module_main(argv: Optional[Sequence[str]] = None) -> int:
    parser = argparse.ArgumentParser(prog="python3 -m choir_build")
    parser.add_argument("project_dir", type=Path, help="choir project directory")
    parser.add_argument(
        "--quick",
        action="store_true",
        help="build only the source-linked debug score",
    )
    parser.add_argument(
        "--transpose",
        metavar="FROM/TO",
        help="transpose the generated score, for example: a/es",
    )
    parser.add_argument("--scale", metavar="FACTOR", default="1",
                        help="scale printed durations and meter by a power of two (e.g. 1/2 or 2); audio is unchanged")
    arguments = parser.parse_args(argv)
    return run(
        arguments.project_dir,
        quick=arguments.quick,
        transpose_value=arguments.transpose,
        scale_value=arguments.scale,
    )


def run(
    project_dir: Path, *, quick: bool, transpose_value: Optional[str], scale_value: str = "1"
) -> int:
    try:
        context = BuildContext.for_project(project_dir)
        transpose = parse_transpose(transpose_value) if transpose_value else None
        ChoirBuilder(context).build(quick=quick, transpose=transpose, scale=parse_scale(scale_value))
    except (BuildError, OSError, ValueError) as exc:
        print(f"[build] error: {exc}", file=sys.stderr)
        return 1
    return 0
