#!/bin/bash

#SBATCH --job-name=SingleJob
#SBATCH --partition=defq
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=3900
#SBATCH -o ./o/SingleJob.out
#SBATCH -e ./o/SingleJob.err

base=$('pwd')

mkdir -p o

echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST

#### Get start time
start=`date +%s`

##### Do some calculations
for i in {1..3000}
do
   count=`expr $i + 1`
done

##### Get end time
end=`date +%s`
runtime=$((end-start))
echo "Time: ${runtime}"


