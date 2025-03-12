#!/usr/bin/env bash

# Specifies apptainer bindings.

# Author: Aliaksandr Nekrashevich
# Email: aliaksandr.nekrashevich@queensu.ca
# (c) Smith School of Business, 2025

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`

experiment_directory="$container_root/experiment"
mkdir -p "$experiment_directory"

export APPTAINER_BINDPATH="$experiment_directory:/sea/code/experiment"
