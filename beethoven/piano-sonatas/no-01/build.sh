#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ "$#" -ne 0 ]; then
  echo "Usage: ./build.sh" >&2
  exit 2
fi

exec "${PROJECT_DIR}/../shared/build.sh" "$PROJECT_DIR"
