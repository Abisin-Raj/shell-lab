
sum=0

i="y"

while [ $i = "y" ]
do

clear

echo "MENU"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "Enter your choice"

read ch

echo "Enter first number:"
read n1

echo "Enter second number:"
read n2

case $ch in

1) sum=$((n1 + n2))
   echo "Sum = $sum";;

2) sum=$((n1 - n2))
   echo "Subtraction = $sum";;

3) sum=$((n1 * n2))
   echo "Multiplication = $sum";;

4) sum=$((n1 / n2))
   echo "Division = $sum";;

*) echo "Invalid choice";;

esac

echo "Do you want to continue (y/n)?"
read i

if [ $i != "y" ]; then
    exit
fi

done

# | 3. Multiplication                      |
# | 4. Division                            |
# | Enter your choice                      |
# | 1                                      |
# | Enter first number:                    |
# | 2                                      |
# | Enter second number:                   |
# | 3                                      |
# | Sum = 5                                |
# | Do you want to continue (y/n)?         |
# | n                                      |
# |________________________________________|
