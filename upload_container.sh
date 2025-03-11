#!/usr/bin/env bash

set -uexo 

ssh hpc4953@login.cac.queensu.ca "mkdir -p ~/sea/container/experiment"
scp sea-container.sif hpc4953@login.cac.queensu.ca:~/sea/container/
scp apptainer_bind.sh  hpc4953@login.cac.queensu.ca:~/sea/container/


set +uexo
