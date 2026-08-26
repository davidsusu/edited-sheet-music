#!/bin/sh

set -eu

project_dir=$( CDPATH='' && cd -P "$( dirname "$0" )" && pwd )
exec python3 "$project_dir/install.py" "$@"
