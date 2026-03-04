
echo "Factorial of the number?"

read fact

ans=1

counter=0

while [ $fact -ne $counter ]
do

    counter=$(( counter + 1 ))

    ans=$(echo "$ans * $counter" | bc)

done

echo "Factorial of $fact is $ans"

# | Factorial of the number?               |
# | 5                                      |
# | Factorial of 5 is 120                  |
# |________________________________________|
