#!/bin/bash

# Write a shell script program (evenodd.sh) 
# which adds the odd numbers in odd lines and adds the even numbers in even lines.
# Write the result on the standard output!
# In each lines there are at least 2 numbers.
# The filename is given by a parameter.

if [ $# -eq 1 ]
then
	filename=$1
else
	echo "Give me filename"
	read filename
fi

if [ ! -f $filename ]
then
	echo "The file doesn't exit"
	exit
fi

number=2
evenre=0
oddre=0

while read line
do
	isEvenNum=`expr $number % 2`
	if [ $isEvenNum -ne 0 ]
	then
		for n1 in $line
		do
			n=`expr $n1 % 2`
			if [ $n -eq 0 ]
			then
				evenre=`expr $evenre + $n1`
			fi
		done
	else
		for n2 in $line
		do
			n=`expr $n2 % 2`
			if [ $n -ne 0 ]
			then
				oddre=`expr $oddre + $n2`
			fi
		done
	fi
	number=`expr $number + 1`
done < $filename
echo "The sum of the numbers in odd lines is $oddre"
echo "The sum of the numbers in even lines is $evenre"
