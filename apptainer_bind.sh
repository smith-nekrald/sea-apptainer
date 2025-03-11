#!/usr/bin/env bash

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`

experiment_directory="$container_root/experiment"
rm -rf "$experiment_directory"
mkdir -p "$experiment_directory"

export APPTAINER_BINDPATH="$experiment_directory:/sea/code/experiment"
