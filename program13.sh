
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
    sum=$((sum + i))
done

# We echo the arithmetic string "scale=2; $sum / $n" into bc
avg=$(echo "scale=2;$sum/$n" | bc)

# Display the calculated average
echo "Average of the numbers = $avg"


# Output:
# __________________________________________
# | $ ./program13.sh 10 20 30              |
# | Average of the numbers = 20.00         |
# |________________________________________|
