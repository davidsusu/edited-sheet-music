from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path


@dataclass(frozen=True)
class BuildContext:
    project_dir: Path
    source_dir: Path
    build_dir: Path
    run_dir: Path
    stage_dir: Path
    output_dir: Path
    shared_dir: Path

    @classmethod
    def for_project(cls, project_dir: Path) -> "BuildContext":
        project_dir = project_dir.expanduser().resolve(strict=True)
        source_dir = project_dir / "src"
        if not (source_dir / "content.ly").is_file():
            raise ValueError(f"Not a choir project directory: {project_dir}")

        shared_dir = project_dir.parent.parent / "shared"
        build_dir = project_dir / "build"
        run_dir = build_dir / "current"
        return cls(
            project_dir=project_dir,
            source_dir=source_dir,
            build_dir=build_dir,
            run_dir=run_dir,
            stage_dir=run_dir / "out",
            output_dir=project_dir / "out",
            shared_dir=shared_dir,
        )
