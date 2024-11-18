#!/bin/bash

##### See https://slurm.schedmd.com/sacct.html

listfile=jobs_submitted.txt

while read line
do
 sacct -j ${line}  -o JobName,Partition,NCpus,ReqMem,NNodes,NodeList | grep -v extern | grep -v batch
done  < ${listfile}


