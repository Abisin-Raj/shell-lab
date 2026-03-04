
echo "Enter three numbers separated by space:"

read a b c

Large=$a

if [ $b -gt $Large ]; then
    Large=$b
fi

if [ $c -gt $Large ]; then
    Large=$c
fi

echo "Largest of $a, $b, $c is $Large"

# Output:
# __________________________________________
# | Enter three numbers separated by space:|
# | 10 25 15                               |
# | Largest of 10, 25, 15 is 25            |
# |________________________________________|
