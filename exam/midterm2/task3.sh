# conver space to tab
file_name=$1
convert=`cat $file_name | tr "[:space:]" '\t'`
echo -e "`cat $file_name`"
echo -e "$convert"
