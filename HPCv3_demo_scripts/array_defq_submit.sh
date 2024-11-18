#!/bin/bash

#SBATCH --job-name=MultiCore
#SBATCH --partition=defq
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=3900
#SBATCH -o ./o/MultiCore_%A_%a.out
#SBATCH -e ./o/MultiCore_%A_%a.err

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


######### Submission examples
######### Default queue
######### sbatch --array=1-10 array_defq_submit.sh

######### Limit number of concurrent jobs to no more than 25
######### sbatch --array=1-1000%25 array_defq_submit.sh

######### if you need the whole defq node, modify parameters as
######### #SBATCH --cpus-per-task=48
######### #SBATCH --mem-per-cpu=3900

