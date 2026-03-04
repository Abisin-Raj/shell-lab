
clear

now=$(date +"%T")

echo "Current time: $now"

now=$(date +"%H")


if [ $now -ge 06 -a $now -le 12 ]
then
    echo "Good morning"

# [ $now -gt 12 -a $now -le 17 ] means: (hour > 12) AND (hour <= 17)
elif [ $now -gt 12 -a $now -le 17 ]
then
    echo "Good afternoon"

# else branch: catches all other hours (18:00 - 05:59) -> Evening/Night
else
    echo "Good evening"
# fi - ends the if/elif/else block (if spelled backwards)
fi

# Output:
# __________________________________________
# | Current time: 13:00:00                 |
# | Good afternoon                         |
# |________________________________________|
