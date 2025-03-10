#!/usr/bin/env bash

set -uexo 

sudo apptainer build sea-container.sif sea-container.def

set +uexo
