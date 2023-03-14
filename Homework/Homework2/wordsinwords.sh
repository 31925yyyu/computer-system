#!/bin/bash

#Write shell script program (wordsinwords.sh) which has got a parameter (a filename)
#The file contains a text. 
#The task of the script is to decide which word is contained most frequently in other words.

if [ $# -eq 1 ]
then
	filename=$1
else
	echo "Please give the file name"
	read filename
fi

if [ ! -f $filename ]
then
	echo "The file doesn't exit"
	exit
fi

count=0

while read a
do
	for i in $a
	do
		content=`grep -o -i $i $1 | wc -l`
		if [ $content -gt $count ]
		then
			count=$content
			winner=$i
		fi
	done
done < $filename

echo "$winner is the game winner"

