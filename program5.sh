
clear

echo "Enter a number:"

read n

sd=0

rev=0

while [ $n -gt 0 ]
do

sd=$((n % 10))

rev=$((rev * 10 + sd))

# / is integer division operator (truncates decimal)
# Example: 12345 / 10 = 1234 (removes last digit)
# This prepares n for the next iteration
n=$((n / 10))

# done - marks end of while loop
# Loop continues until all digits are processed (n becomes 0)
done

# Display the reversed number
# $rev contains the final reversed value
echo "Reverse of the number is $rev"

# Output:
# __________________________________________
# | Enter a number:                        |
# | 12345                                  |
# | Reverse of the number is 54321         |
# |________________________________________|
