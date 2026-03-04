
echo "Enter the three numbers separated by space:"

read a b c

sum=$(echo "$a+$b+$c" | bc)

mean=$(echo "scale=4; $sum/3" | bc)

echo "Mean of $a, $b, $c is $mean"

sd=$(echo "($a-$mean)*($a-$mean)" | bc)

sd=$(echo "$sd+($b-$mean)*($b-$mean)" | bc)

# This is Σ(x - mean)² for all three numbers
sd=$(echo "$sd+($c-$mean)*($c-$mean)" | bc)

# Standard Deviation Calculation - Final Step
# Divide sum of squared deviations by n (3 numbers)
# scale=6 - use 6 decimal places for final precision
# Formula: variance = Σ(x - mean)²/n
# Note: This calculates variance, not standard deviation
# (Standard deviation would require sqrt, but bc doesn't have it built-in)
sd=$(echo "scale=6; $sd/3" | bc)

# Display the result (technically this is variance, not SD)
echo "Variance is $sd"

# Output:
# __________________________________________
# | Enter the three numbers separated by space:|
# | 1 2 3                                      |
# | Mean of 1, 2, 3 is 2.0000                  |
# | Variance is .666666                        |
# |____________________________________________|
