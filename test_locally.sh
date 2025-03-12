#!/usr/bin/env bash                                                             

# Test newly created container locally.

# Author: Aliaksandr Nekrashevich
# Email: aliaksandr.nekrashevich@queensu.ca
# (c) Smith School of Business, 2025

set -uexo 

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`
cd "$container_root"

source apptainer_bind.sh
apptainer run sea-container.sif /sea/code/run_debug.sh

set +uexo
                     
