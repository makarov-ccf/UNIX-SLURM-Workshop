########
######## Example scripts available
########
.
├── array_bigmem_submit.sh - submit array jobs to bigmem queue
├── array_defq_submit.sh - submit array jobs to default queue
├── array_job.sh  - reading input from the text file
├── array_job_submit.sh - submit array jobs (script array_job.sh above) to default queue 
├── array_xtreme_submit.sh - submit array jobs to xTreme queue
├── list - text file read by one of scripts
├── single_job.sh - submits single (not array) job
└── sleep10sec.sh - demo script used to test all submission scripts. Does nothing else but seep 10 seconds
│
├── SubmitWithDepend - directory contains the scripts to test job submit with dependencies
│	       ├── SubmitWithDepend.sh
│	       ├── job1.sh
│	       ├── job2.sh
│	       ├── job3.sh
│	       ├── job4.sh
│	       ├── job5.sh
│	       └── sleep10sec.sh

########
######## Further reading
########

For further reading, please consult SLURM documentation
Slurm Workload Manager: Architecture, Configuration and Use tutorials can be found at
https://slurm.schedmd.com/tutorials.html

########
######## Job submission examples
########

#### Submit a single batch job
sbatch single_job.sh

#### Submit an array batch job
sbatch --array=1-3 array_job_submit.sh

#### Submit an array batch job to default Queue
sbatch --array=1-3 array_defq_submit.sh

#### Submit an array batch job to BigMem Queue
sbatch --array=1-3 array_bigmem_submit.sh

#### Submit an array batch job to eXtreme Queue
sbatch --array=1-3 array_xtreme_submit.sh

