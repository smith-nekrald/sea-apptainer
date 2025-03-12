#!/usr/bin/env bash

# Builds Apptainer sandbox and creates SIF containr from sandbox.

# Author: Aliaksandr Nekrashevich
# Email: aliaksandr.nekrashevich@queensu.ca
# (c) Smith School of Business, 2025


set -uexo 

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`

cd "$container_root"

sudo apptainer build --sandbox sea-container.sbx sea-container.def
sudo apptainer build sea-container.sif sea-container.sbx

set +uexo
