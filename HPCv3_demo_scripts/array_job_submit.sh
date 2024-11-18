#!/bin/bash

#SBATCH --job-name=ArrayJob
#SBATCH --partition=defq
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=3900
#SBATCH -o ./o/ArrayJob_%A_%a.out
#SBATCH -e ./o/ArrayJob_%A_%a.err

module load python/2.7.18
module load R/4.3.2

base=$('pwd')
mkdir -p o
echo Runs on ${SLURM_JOB_NODELIST}
echo Total jobs submitted ${SLURM_ARRAY_TASK_COUNT}
#### Various applications may be called:

#### BASH shell script
${base}/array_job.sh ${base} ${SLURM_ARRAY_TASK_ID} ${base}/list

# #### R script
Rscript ${base}/array_job.R ${base} ${SLURM_ARRAY_TASK_ID} ${base}/list

#### Python script
python2.7 ${base}/array_job.py ${base} ${SLURM_ARRAY_TASK_ID} ${base}/list

