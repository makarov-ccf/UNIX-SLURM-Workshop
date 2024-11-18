#!/bin/bash


#SBATCH -o ./o/sleep.out
#SBATCH -e ./o/sleep.err

base=$('pwd')
mkdir -p o
cd ${base}
sleep 3
############# SBATCH --job-name=Sleep
