
echo "Factorial of the number?"

read fact

ans=1

counter=0

while [ $fact -ne $counter ]
do

    counter=$(( counter + 1 ))

    # Syntax: variable=$(echo "expression" | bc)
    # - echo "$ans * $counter" prints the expression as a string
    # - | (pipe) sends it to bc which evaluates it
    # We use bc instead of $((...)) because bc handles arbitrarily large integers
    # Shell arithmetic would overflow for factorials larger than 20! (> 2^63)
    ans=$(echo "$ans * $counter" | bc)

# done - marks the end of the while loop
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
