#!/bin/bash

#SBATCH --job-name=Job3
#SBATCH --partition=defq
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=3900
#SBATCH -o ./o/Job3_%A_%a.out
#SBATCH -e ./o/Job3_%A_%a.err

base=$('pwd')
echo Runs on ${SLURM_JOB_NODELIST}
echo Total jobs submitted ${SLURM_ARRAY_TASK_COUNT}
${base}/sleep10sec.sh ${base} \
 ${SLURM_ARRAY_TASK_ID} \
 ${SLURM_ARRAY_TASK_COUNT} \
 ${SLURM_MEM_PER_CPU} \
 ${SLURM_CPUS_PER_TASK} \
 ${SLURM_JOB_PARTITION} \

