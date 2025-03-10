#!/usr/bin/env bash

local_uname=nekrald
server_uname=hpc4953

working_directory=`pwd`
experiment_directory="$working_directory/experiment"
mkdir -p "$experiment_directory"

export APPTAINER_BINDPATH="$experiment_directory:/sea/code/experiment"
