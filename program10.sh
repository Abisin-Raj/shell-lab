
clear

read -p "Enter the filename: " file

echo "Contents of the file are"
echo "##############"

echo "Displaying content of: $file"
cat $file

echo "#############"

lines=$(wc -l < $file)

words=$(wc -w < $file)

characters=$(wc -c < $file)

echo "Number of lines = $lines"
echo "Number of words = $words"
echo "Number of characters = $characters"

# | Number of lines = 1                    |
# | Number of words = 2                    |
# | Number of characters = 12              |
# |________________________________________|
