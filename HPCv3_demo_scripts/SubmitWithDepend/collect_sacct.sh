#!/bin/bash

listfile=jobs_submitted.txt

while read line
do

sacct -j ${line}  -o JobId,JobName,start,end,state,elapsed | grep -v extern | grep -v batch


done  < ${listfile}

sacct -j 73990  -o JobId,JobName,Partition,NCpus,ReqMem,NNodes,NodeList | grep -v extern | grep -v batch





