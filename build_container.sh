#!/usr/bin/env bash

set -uexo 

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`

cd "$container_root"

rm -rf sea-container.sif
sudo apptainer build sea-container.sif sea-container.def

set +uexo
