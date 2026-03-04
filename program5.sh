
clear

echo "Enter a number:"

read n

sd=0

rev=0

while [ $n -gt 0 ]
do

sd=$((n % 10))

rev=$((rev * 10 + sd))

n=$((n / 10))

done

# $rev contains the final reversed value
echo "Reverse of the number is $rev"

# Output:
# __________________________________________
# | Enter a number:                        |
# | 12345                                  |
# | Reverse of the number is 54321         |
# |________________________________________|
