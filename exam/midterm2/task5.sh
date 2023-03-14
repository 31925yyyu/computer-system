if [ $# -ne 2 ]
then
	echo Please enter two arguements
	exit
fi
if [ -f $1 ] || [ -d $2 ]
then
	echo "Directory or File already exists!!"
	exit
else
	`touch $1`
	`mkdir $2`
fi
