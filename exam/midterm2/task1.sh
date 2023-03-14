#!/bin/bash
if [ $# -ne 1 ]
then
	echo Please enter a number
	exit
fi
start=3
count=0
step=4
while [ $count -lt $1 ]
do
	count=$((count+1))
	echo -n $start ","
	start=$(($start+$step))
done
