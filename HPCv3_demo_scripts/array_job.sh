#!/bin/bash

base=$1
task_id=$2
listfile=$3

cd ${base}

count=1
while read line
do

 if [ "$task_id" == "$count" ]; then
  
	sleep 5
	echo "Line ${arrind} is ${line} "
	sleep 5

 fi

 count=`expr $count + 1`

done  < ${listfile}

echo "exit status $?"



