#!/bin/bash

base=$1
task_id=$2
task_count=$3
mem_per_cpu=$4
cpus_per_task=$5
job_partition=$6

cd ${base}

sleep 10
echo "Running job ${task_id}" # ${SLURM_ARRAY_TASK_ID} 
echo "Total jobs submitted ${task_count}" # ${SLURM_ARRAY_TASK_COUNT} 
echo "Memory requested per CPU ${mem_per_cpu}" # ${SLURM_MEM_PER_CPU} 
echo "Number of CPUs per task ${cpus_per_task}" # ${SLURM_CPUS_PER_TASK}
echo "Submitted to ${job_partition}" # ${SLURM_JOB_PARTITION}

echo "exit status $?"