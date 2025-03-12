#!/usr/bin/env bash                                                             

# Specifies job execution on cluster. This script is launched through sbatch.
                                                                                
# Author: Aliaksandr Nekrashevich
# Email: aliaksandr.nekrashevich@queensu.ca
# (c) Smith School of Business, 2025

#SBATCH --qos=privileged                                                        
#SBATCH -N 1                                                                    
#SBATCH -c 8
#SBATCH --mem=16g                                                               
#SBATCH --time=12:00:00                                                      
#SBATCH --mail-type=ALL                                                         
#SBATCH --mail-user=aliaksandr.nekrashevich@queensu.ca                          
#SBATCH -o /global/home/hpc4953/sea/container/experiment/slurm.log

set -uexo 

module load StdEnv/2016.4
module load apptainer

source /global/home/hpc4953/sea/container/apptainer_bind.sh
apptainer run /global/home/hpc4953/sea/container/sea-container.sif /sea/code/run_system.sh

set +uexo
                     
