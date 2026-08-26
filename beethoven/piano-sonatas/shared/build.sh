#!/bin/sh

set -eu

shared_dir=$( CDPATH='' && cd -P "$( dirname "$0" )" && pwd )
PYTHONPATH="$shared_dir/src/python${PYTHONPATH:+:$PYTHONPATH}"
export PYTHONPATH

exec python3 -m sonata_build "$@"
