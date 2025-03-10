#!/usr/bin/env bash

working_directory=`pwd`
experiment_directory="$working_directory/experiment"
mkdir -p "$experiment_directory"

export APPTAINER_BINDPATH="$experiment_directory:/sea/code/experiment"
