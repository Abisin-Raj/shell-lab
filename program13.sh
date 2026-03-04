
clear

sum=0

n=$#

if [ $n -eq 0 ]; then
    echo "No numbers provided."
    echo "Usage: sh $0 number1 number2 ..."
    exit 1
fi

for i in "$@"
do
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
