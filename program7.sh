
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

# This prepares x for the next calculation
x=$y

# Move z (current term) to y (previous term)
# This prepares y for the next calculation
# After this: x and y are ready for next Fibonacci number
y=$z

# done - marks end of while loop
# Example progression for n=7:
#   Initial: x=0, y=1 (printed)
#   Iter 1: z=0+1=1, x=1, y=1
#   Iter 2: z=1+1=2, x=1, y=2
#   Iter 3: z=1+2=3, x=2, y=3
#   Iter 4: z=2+3=5, x=3, y=5
#   Iter 5: z=3+5=8, x=5, y=8
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
