#!/bin/bash

#SBATCH --job-name=Bigmem
#SBATCH --partition=bigmem
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --mem-per-cpu=45000
#SBATCH -o ./o/Bigmem_%A_%a.out
#SBATCH -e ./o/Bigmem_%A_%a.err

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

######### Example below must be submitted to bigmem
######### #SBATCH --cpus-per-task=16
######### #SBATCH --mem-per-cpu=45000

######### bigmem queue - this job will take the whole bigmem node
######### sbatch -p xtreme --array=1-3 array_bigmem_submit.sh



