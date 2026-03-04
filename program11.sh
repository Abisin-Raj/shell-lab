
echo "Factorial of the number?"

read fact

ans=1

counter=0

# Loop runs from counter=1 to counter=fact, multiplying ans each iteration
# Example for n=5: ans = 1*1*2*3*4*5 = 120 (which is 5!)
while [ $fact -ne $counter ]
do

    # Increment counter by 1 each iteration (counts from 1 up to fact)
    # Syntax: $((expression)) - arithmetic expansion
    # This means counter = counter + 1
    counter=$(( counter + 1 ))

    # Multiply 'ans' by 'counter' using bc (basic calculator)
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
