#!/usr/bin/env bash

set -uexo

script_path=`readlink -f "${BASH_SOURCE[0]}"`
script_dir=`dirname "$script_path"`
container_root=`readlink -f "$script_dir"`

cd "$container_root"

server_home=/global/home/hpc4953
server_user=hpc4953

ssh $server_user@login.cac.queensu.ca "rm -rf $server_home/sea/container"
ssh $server_user@login.cac.queensu.ca "mkdir -p $server_home/sea/container/experiment"

scp sea-container.sif $server_user@login.cac.queensu.ca:$server_home/sea/container/
scp apptainer_bind.sh  $server_user@login.cac.queensu.ca:$server_home/sea/container/
scp cluster_job.sh $server_user@login.cac.queensu.ca:$server_home/sea/container/

ssh $server_user@login.cac.queensu.ca "sbatch $server_home/sea/container/cluster_job.sh"

set +uexo
