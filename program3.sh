
echo "Enter three numbers separated by space:"

read a b c

Large=$a

if [ $b -gt $Large ]; then
    Large=$b
fi

if [ $c -gt $Large ]; then
    # If c is greater than Large, update Large to c
    # Now Large holds the maximum of all three numbers
    Large=$c
fi

# echo with variable interpolation
# $a, $b, $c, $Large are expanded to their values
# Commas and spaces in the string are printed literally
echo "Largest of $a, $b, $c is $Large"

# Output:
# __________________________________________
# | Enter three numbers separated by space:|
# | 10 25 15                               |
# | Largest of 10, 25, 15 is 25            |
# |________________________________________|
