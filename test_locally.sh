#!/usr/bin/env bash                                                             
                                                                                
set -uexo 

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`
cd "$container_root"

source apptainer_bind.sh
apptainer run sea-container.sif /sea/code/run_debug.sh

set +uexo
                     
