
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

# Pattern 1: Addition
# $((...)) is arithmetic expansion - evaluates mathematical expressions
# Syntax: $((expression))
# Performs integer arithmetic: n1 + n2
1) sum=$((n1 + n2))
   # Print result with variable interpolation
   echo "Sum = $sum";;
   # ;; terminates this case branch

# Pattern 2: Subtraction
# $((n1 - n2)) subtracts n2 from n1
2) sum=$((n1 - n2))
   echo "Subtraction = $sum";;

# Pattern 3: Multiplication
# * is multiplication operator in arithmetic expansion
3) sum=$((n1 * n2))
   echo "Multiplication = $sum";;

# Pattern 4: Division
# / is integer division operator (truncates decimal)
4) sum=$((n1 / n2))
   echo "Division = $sum";;

# Pattern *: Default case (wildcard matches anything)
# Handles invalid input (not 1, 2, 3, or 4)
*) echo "Invalid choice";;

# esac - ends the case statement (case spelled backwards)
esac

# Ask user if they want to continue
echo "Do you want to continue (y/n)?"
# read - stores user response in variable i
read i

# if statement - conditional execution
# Syntax: if [ condition ]; then commands; fi
# [ $i != "y" ] tests if i is NOT equal to "y"
# != is the not-equal operator
if [ $i != "y" ]; then
    # exit - terminates the script immediately
    # Syntax: exit [exit_code]
    exit
fi

# done - marks the end of the while loop
# If exit wasn't called, loop continues (goes back to while condition)
done

# Output:
# __________________________________________
# | MENU                                   |
# | 1. Addition                            |
# | 2. Subtraction                         |
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
