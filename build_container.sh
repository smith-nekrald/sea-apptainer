#!/usr/bin/env bash

set -uexo 

rm -rf sea-container.sif
sudo apptainer build sea-container.sif sea-container.def

set +uexo
