#!/bin/bash

#SBATCH --job-name=eXtreme
#SBATCH --partition=xtreme
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --mem-per-cpu=30000
#SBATCH -o ./o/eXtreme_%A_%a.out
#SBATCH -e ./o/eXtreme_%A_%a.err

base=$('pwd')
mkdir -p o
echo Runs on ${SLURM_JOB_NODELIST}
echo Total jobs submitted ${SLURM_ARRAY_TASK_COUNT}
${base}/sleep10sec.sh ${base} \
 ${SLURM_ARRAY_TASK_ID} \
 ${SLURM_ARRAY_TASK_COUNT} \
 ${SLURM_MEM_PER_CPU} \
 ${SLURM_CPUS_PER_TASK} \
 ${SLURM_JOB_PARTITION}



#########
######### Modify parameters as needed, must be congruent to hardware on which it is intended to run.
######### Otherwise, you will see an error message
######### sbatch: error: CPU count per node can not be satisfied
######### sbatch: error: Batch job submission failed: Requested node configuration is not available

######### Example below must be submitted to xtreme
######### #SBATCH --cpus-per-task=32
######### #SBATCH --mem-per-cpu=30000

######### xtreme queue - one xTreme node will run three jobs like this
######### sbatch -p xtreme --array=1-3 array_xtreme_submit.sh




