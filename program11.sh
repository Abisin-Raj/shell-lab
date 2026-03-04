
echo "Factorial of the number?"

read fact

ans=1

counter=0

while [ $fact -ne $counter ]
do

    counter=$(( counter + 1 ))

    ans=$(echo "$ans * $counter" | bc)

# When counter equals fact, the condition [ $fact -ne $counter ] becomes false
# and loop exits with 'ans' holding the final factorial value
done

# echo with variable interpolation - prints the computed factorial
# $fact is the original input, $ans is the computed n!
echo "Factorial of $fact is $ans"

# Output:
# __________________________________________
# | Factorial of the number?               |
# | 5                                      |
# | Factorial of 5 is 120                  |
# |________________________________________|
