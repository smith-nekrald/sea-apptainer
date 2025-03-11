#!/usr/bin/env bash

set -uexo 

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`

cd "$container_root"

sudo apptainer build --sandbox sea-container.sbx sea-container.def
sudo apptainer build sea-container.sif sea-container.sbx

set +uexo
