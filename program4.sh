
echo "Enter the three numbers separated by space:"

read a b c

sum=$(echo "$a+$b+$c" | bc)

mean=$(echo "scale=4; $sum/3" | bc)

echo "Mean of $a, $b, $c is $mean"

sd=$(echo "($a-$mean)*($a-$mean)" | bc)

sd=$(echo "$sd+($b-$mean)*($b-$mean)" | bc)

sd=$(echo "$sd+($c-$mean)*($c-$mean)" | bc)

sd=$(echo "scale=6; $sd/3" | bc)

echo "Variance is $sd"

# | Enter the three numbers separated by space:|
# | 1 2 3                                      |
# | Mean of 1, 2, 3 is 2.0000                  |
# | Variance is .666666                        |
# |____________________________________________|
