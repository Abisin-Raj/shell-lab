
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

avg=$(echo "scale=2;$sum/$n" | bc)

echo "Average of the numbers = $avg"


