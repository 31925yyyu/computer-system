# Write a shell script program (evenodd.sh) 
# which adds the odd numbers in odd lines and adds the even numbers in even lines.
# Write the result on the standard output!
# In each lines there are at least 2 numbers.
# The filename is given by a parameter.

if ($args.Length -eq 1 )
{
    $filename=$args[0]
}
else
{
    write-Output "Please enter filename as a parameter"
    exit
}


$number=2
$evenRes=0
$oddRes=0

foreach($line in Get-Content $filename)
{
    $numSpl=$line.split()
    $checknum= $number % 2
	if ( $checknum -ne 0 )
	{
        foreach($n1 in $numSpl)
        {
		    $n= $n1 % 2
		    if ( $n -eq 0 )
		    {
		        $evenRes=$evenRes + $n1
		    }
		}
    } # sum of even number in even lines
	else
    {
		foreach($n2 in $numSpl)
		{
			$n=$n2 % 2
			if ( $n -ne 0 )
			{
			$oddRes= $oddRes + $n2
			}
		}
    } # sum of odd number in odd lines
    $number = $number + 1
}


write-Output "The sum of the numbers in odd lines is $oddRes"
write-Output "The sum of the numbers in even lines is $evenRes"