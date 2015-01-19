#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

# Copy LICENSE and NOTICE in stemcell tarball
mkdir -p $work/stemcell
cp $base_dir/LICENSE $work/stemcell/LICENSE
cp $base_dir/NOTICE $work/stemcell/NOTICE
