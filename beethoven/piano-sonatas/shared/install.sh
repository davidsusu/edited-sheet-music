#!/bin/sh

set -eu

shared_dir=$( CDPATH='' && cd -P "$( dirname "$0" )" && pwd )
exec python3 "$shared_dir/install.py" "$@"
