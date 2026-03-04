
clear

echo "Enter the string:"

read string

stringrev=$(echo $string | rev)

# Compare the original string with the reversed string
# != is the string inequality operator
# We check if they are NOT equal first
if [ "$string" != "$stringrev" ]; then
    # If they are different, it's not a palindrome
    echo "String is not a palindrome"
else
    # If they are equal (the 'else' case), it is a palindrome
    # A palindrome reads the same forwards and backwards
    echo "Input string is a palindrome"
fi

# Output:
# __________________________________________
# | Enter the string:                      |
# | madam                                  |
# | Input string is a palindrome           |
# |________________________________________|
