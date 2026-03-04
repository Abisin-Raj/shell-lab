
clear

echo "Enter the name of the employee"

read name

echo "Enter the Basic Pay of the employee"

read BP

echo "Enter the DA of the employee"

read DA

echo "Enter the HRA of the employee"

read HRA

# Calculate Gross Salary using 'bc' (Basic Calculator)
# Formula: Gross = Basic Pay + (Basic Pay * DA / 100) + (Basic Pay * HRA / 100)
# 'scale=2' ensures the result has 2 decimal places (for currency)
# The arithmetic expression is echoed and piped into 'bc'
# $BP, $DA, $HRA are variables expanded to their values
Gross=$(echo "scale=2;$BP+($BP*$DA/100)+($BP*$HRA/100)" | bc)

# Print the calculated Gross Salary for the employee
# $name and $Gross are interpolated into the string
echo "Gross salary of $name is Rs $Gross"

# Output:
# __________________________________________
# | Enter the name of the employee         |
# | John                                   |
# | Enter the Basic Pay of the employee    |
# | 10000                                  |
# | Enter the DA of the employee           |
# | 10                                     |
# | Enter the HRA of the employee          |
# | 20                                     |
# | Gross salary of John is Rs 13000.00    |
# |________________________________________|
