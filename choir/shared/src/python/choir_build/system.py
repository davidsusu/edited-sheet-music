from __future__ import annotations

import shutil
import subprocess
from pathlib import Path
from typing import Mapping, Optional, Sequence


class BuildError(RuntimeError):
    pass


class CommandRunner:
    def run(
        self,
        args: Sequence[object],
        *,
        cwd: Optional[Path] = None,
        env: Optional[Mapping[str, str]] = None,
    ) -> None:
        command = [str(arg) for arg in args]
        try:
            subprocess.run(command, check=True, cwd=cwd, env=dict(env) if env else None)
        except FileNotFoundError as exc:
            raise BuildError(f"Required command is missing: {command[0]}") from exc
        except subprocess.CalledProcessError as exc:
            raise BuildError(
                f"Command failed with exit status {exc.returncode}: {' '.join(command)}"
            ) from exc

    def capture(
        self,
        args: Sequence[object],
        *,
        cwd: Optional[Path] = None,
        check: bool = True,
    ) -> str:
        command = [str(arg) for arg in args]
        try:
            completed = subprocess.run(
                command,
                check=check,
                cwd=cwd,
                stdout=subprocess.PIPE,
                stderr=subprocess.DEVNULL,
                text=True,
            )
        except FileNotFoundError:
            if not check:
                return ""
            raise BuildError(f"Required command is missing: {command[0]}")
        except subprocess.CalledProcessError as exc:
            raise BuildError(
                f"Command failed with exit status {exc.returncode}: {' '.join(command)}"
            ) from exc
        return completed.stdout


def log(message: str) -> None:
    print(f"[build] {message}", flush=True)


def remove_path(path: Path) -> None:
    if path.is_symlink() or path.is_file():
        path.unlink()
    elif path.is_dir():
        shutil.rmtree(path)


def write_text(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write(content)
