
clear

now=$(date +"%T")

echo "Current time: $now"

# We overwrite 'now' with just the hour because we need an integer for comparison
# This separate call is needed because %T cannot be compared directly with -ge/-lt
now=$(date +"%H")

# Check time ranges to determine the appropriate greeting
# Syntax: if [ condition ]; then ... elif [ condition ]; then ... else ... fi
# Numeric comparison operators used:
#   -ge : greater than or equal to (>=)
#   -le : less than or equal to    (<=)
#   -gt : greater than             (>)
#   -a  : logical AND - both conditions must be true

# if branch: hour is between 06 (6 AM) and 12 (noon) inclusive -> Morning
# [ $now -ge 06 -a $now -le 12 ] means: (hour >= 6) AND (hour <= 12)
if [ $now -ge 06 -a $now -le 12 ]
then
    echo "Good morning"

# elif branch: hour is between 13 (1 PM) and 17 (5 PM) inclusive -> Afternoon
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
