#!/usr/bin/env bash

# Builds apptainer SIF container, tests and submits to cluster.

# Author: Aliaksandr Nekrashevich
# Email: aliaksandr.nekrashevich@queensu.ca
# (c) Smith School of Business, 2025

set -uexo

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`

cd "$container_root"
"$container_root"/build_container.sh
"$container_root"/test_locally.sh
"$container_root"/submit_container.sh

set +uexo
