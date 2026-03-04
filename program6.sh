
clear

echo "Program to print prime numbers"

echo "Enter the limit:"

read n

i=2

echo "Prime numbers are..."

while [ $i -le $n ]
do

    flag=0

    j=2

    while [ $j -lt $i ]
    do
        k=$((i % j))

        if [ $k -eq 0 ]; then
            flag=1
            break
        fi

        j=$((j + 1))
    done

    if [ $flag -eq 0 ]; then
        echo -n " $i"
    fi

    i=$((i + 1))
done

echo

# Output:
# __________________________________________
# | Enter the limit:                       |
# | 10                                     |
# | Prime numbers are...                   |
# | 2 3 5 7                                |
# |________________________________________|
