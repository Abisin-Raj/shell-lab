
clear

echo "Enter the radius of the circle:"

read r

area=$(echo "3.14 * $r * $r" | bc)

circum=$(echo "3.14 * 2 * $r" | bc)

# $area is expanded to its calculated value within the double-quoted string
echo "Area of the circle is: $area"

# Similar to above - prints the circumference with variable expansion
# $circum is replaced with the calculated circumference value
echo "Circumference of the circle is: $circum"

# Output:
# __________________________________________
# | Enter the radius of the circle:        |
# | 5                                      |
# | Area of the circle is: 78.5            |
# | Circumference of the circle is: 31.4   |
# |________________________________________|
