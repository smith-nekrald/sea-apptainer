#!/usr/bin/env bash

set -uexo 

sudo apptainer build --sandbox sea-container.sbx sea-container.def
sudo apptainer build sea-container.sif sea-container.sbx

set +uexo
