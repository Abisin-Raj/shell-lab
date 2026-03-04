# Heading: Program to calculate Average
# Aim: To calculate the average of numbers provided as arguments

# Clear the terminal screen for a clean output
clear

# Initialize 'sum' variable to 0
# This variable will accumulate the sum of all the numbers provided
sum=0

# Get the number of command-line arguments passed to the script
# $# - special shell variable (positional parameter count)
# Syntax: n=$#
# Example: running "sh program13.sh 10 20 30" sets $# to 3
n=$#

# Guard clause: check if any arguments were provided to avoid division by zero
# Syntax: if [ condition ]; then commands; fi
# [ $n -eq 0 ] tests if n equals 0 (-eq = equal to)
if [ $n -eq 0 ]; then
    echo "No numbers provided."
    # $0 - special variable holding the name/path of the script itself
    # Used here to display the correct script name in the usage message
    echo "Usage: sh $0 number1 number2 ..."
    # exit - terminates the script immediately
    # Syntax: exit [exit_code]
    # exit 1 signals an error to the calling shell (non-zero = failure)
    exit 1
fi

# for loop - iterates through all command-line arguments
# Syntax: for variable in list; do ... done
# "$@" - special shell variable that expands to ALL positional parameters as separate quoted words
# Example: for "sh program13.sh 10 20 30", "$@" expands to "10" "20" "30" (three separate items)
# Using "$@" (quoted) is safer than $* - it preserves arguments with spaces correctly
for i in "$@"
do
    # Add the current argument 'i' to the running 'sum'
    # Syntax: $((expression)) - arithmetic expansion evaluates integer math
    # sum = sum + i (accumulates total across all iterations)
    sum=$((sum + i))
# done - marks the end of the for loop body
done

# Calculate the average using 'bc' (Basic Calculator) for floating-point precision
# standard shell arithmetic (expr or $(())) only supports integers
# scale=2 sets the output to 2 decimal places
# We echo the arithmetic string "scale=2; $sum / $n" into bc
avg=$(echo "scale=2;$sum/$n" | bc)

# Display the calculated average
echo "Average of the numbers = $avg"


# Output:
# __________________________________________
# | $ ./program13.sh 10 20 30              |
# | Average of the numbers = 20.00         |
# |________________________________________|
