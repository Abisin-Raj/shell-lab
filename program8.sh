
echo "Program to check Armstrong number"

echo "Enter the number: "

read n

sum=0

old=$n

while [ $n -gt 0 ]
do
    sd=$((n % 10 ))

    sum=$(( sum + sd * sd * sd ))

    # Example: 153 / 10 = 15 (integer division truncates the decimal part)
    n=$(( n / 10 ))
done

# Compare the original number ('old') with the calculated sum ('sum')
# -eq is the equality operator for numeric comparison
if [ $old -eq $sum ]; then
    # If they are equal, the number is an Armstrong number
    echo "Number is Armstrong"
else
    # If they are not equal, it is not an Armstrong number
    echo "Number is not Armstrong"
fi

# Output:
# __________________________________________
# | Program to check Armstrong number      |
# | Enter the number:                      |
# | 153                                    |
# | Number is Armstrong                    |
# |________________________________________|
