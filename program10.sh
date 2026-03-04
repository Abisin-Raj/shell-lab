
clear

read -p "Enter the filename: " file

echo "Contents of the file are"
echo "##############"

echo "Displaying content of: $file"
cat $file

echo "#############"

lines=$(wc -l < $file)

words=$(wc -w < $file)

# < $file matches the input redirection pattern used above
characters=$(wc -c < $file)

# Print the gathered statistics
echo "Number of lines = $lines"
echo "Number of words = $words"
echo "Number of characters = $characters"

# Output:
# __________________________________________
# | Enter the filename: abc.txt            |
# | Contents of the file are               |
# | ##############                         |
# | Displaying content of: abc.txt         |
# | hello world                            |
# | #############                          |
# | Number of lines = 1                    |
# | Number of words = 2                    |
# | Number of characters = 12              |
# |________________________________________|
