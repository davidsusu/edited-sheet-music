#!/usr/bin/env python3

from pathlib import Path
import sys


PROJECT_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(PROJECT_DIR.parent.parent / "shared" / "src" / "python"))

from choir_build import main  # noqa: E402


if __name__ == "__main__":
    raise SystemExit(main(PROJECT_DIR))
