#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ "$#" -gt 1 ] || { [ "$#" -eq 1 ] && [ "$1" != "--quick" ]; }; then
  echo "Usage: ./build.sh [--quick]" >&2
  exit 2
fi

exec "${PROJECT_DIR}/../shared/build.sh" "$PROJECT_DIR" "$@"
