# conver the lower case letter to upper
file_name=$1
capital=`cat $file_name | tr "[a-z]" "[A-Z]"`
echo -e `cat $file_name`
echo -e $capital
