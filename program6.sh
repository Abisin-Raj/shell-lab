
clear

echo "Program to print prime numbers"

echo "Enter the limit:"

read n

i=2

echo "Prime numbers are..."

while [ $i -le $n ]
do

    flag=0

    j=2

    while [ $j -lt $i ]
    do
        # % is modulo operator
        k=$((i % j))

        # Check if remainder is 0 (meaning i is divisible by j)
        # -eq is "equal to"
        if [ $k -eq 0 ]; then
            # If divisible, it's not a prime number
            flag=1
            # Break out of inner loop - no need to check further
            break
        fi

        # Increment inner loop counter
        j=$((j + 1))
    done

    # After inner loop, check the flag
    # If flag remains 0, no divisors were found -> it is Prime
    if [ $flag -eq 0 ]; then
        # Print the prime number
        # -n option suppresses the trailing newline so numbers print on one line
        echo -n " $i"
    fi

    # Increment outer loop counter to check next number
    i=$((i + 1))
done

# Print a final newline for clean formatting
echo

# Output:
# __________________________________________
# | Enter the limit:                       |
# | 10                                     |
# | Prime numbers are...                   |
# | 2 3 5 7                                |
# |________________________________________|
