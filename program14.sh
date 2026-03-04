
clear

now=$(date +"%T")

echo "Current time: $now"

now=$(date +"%H")


if [ $now -ge 06 -a $now -le 12 ]
then
    echo "Good morning"

elif [ $now -gt 12 -a $now -le 17 ]
then
    echo "Good afternoon"

else
    echo "Good evening"
fi

# | Good afternoon                         |
# |________________________________________|
