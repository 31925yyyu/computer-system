if [ $# -ne 3 ]
then
        echo -e "Please give three file names in the order:\nVote file!\nMajor file!\nRepresentative file!"
        exit
fi
if [ -f $1 ] && [ -f $2 ] && [ -f $3 ]
then
        if [ -f "notvalid.txt" ]
        then
                rm notvalid.txt
        fi
        major_vote=0
        local_vote=0
        while IFS=, read major local
        do

                if [ "$major" != "" ] && [ "$local" != "" ]
                then
                        exist_major=`grep -i -w -c $major $2`
                        exist_local=`grep -i -w -c $local $3`
                        if [ $exist_major -ne 0 ] && [ $exist_local -ne 0 ]
                        then
                                major_count=`grep -i -w -c $major $1`
                                local_count=`grep -i -w -c $local $1`
                                if [ $major_count -gt $major_vote ]
                                then
                                        major_vote=$major_count
                                        major_winner=$major
                                fi
                                if [ $local_count -gt $local_vote ]
                                then
                                        local_vote=$local_count
                                        local_winner=$local
                                fi
                        else
                                echo "$major ,$local" >> notvalid.txt
                        fi
                else
                        echo "$major $local" >> notvalid.txt
                fi
        done < $1
        echo "---Winners are---"
        echo "Major: $major_winner"
        echo "Local Representative: $local_winner"
else
        echo "Please enter correct file names!"
fi
