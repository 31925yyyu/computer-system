# read number from a file
while IFS=, read a b
do
	echo Number1: $a
	echo Number2: $b
	sum=`expr $a + $b`
	echo The sum of two numbes is $sum
	subtract=`expr $a - $b`
	echo The subtract of two number is $subtract
	mu=`expr $a \* $b`
	echo The multipy of two number is $mu
	div=`expr $a / $b`
	echo The divide of two number is $div
done < task4.txt
