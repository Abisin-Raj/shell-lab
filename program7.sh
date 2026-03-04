
clear

echo "How many numbers of terms to be generated?"

read n

x=0

y=1

i=2

echo "Fibonacci Series up to $n terms:"

echo "$x"

echo "$y"

while [ $i -lt $n ]
do

i=$((i + 1))

z=$((x + y))

echo "$z"

x=$y

y=$z

#   Series: 0, 1, 1, 2, 3, 5, 8
done

# Output:
# __________________________________________
# | How many numbers of terms to be generated?|
# | 5                                      |
# | Fibonacci Series up to 5 terms:        |
# | 0                                      |
# | 1                                      |
# | 1                                      |
# | 2                                      |
# | 3                                      |
# |________________________________________|
