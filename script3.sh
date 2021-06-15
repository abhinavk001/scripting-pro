#!bin/bash
do=true
echo -e "   
        MENU
----------------------
    1. Addition
    2. Subtraction
    3. Multiplication
    4. Division
    5. Modulus        "
while $do
do
    sum=0
    echo "Enter the operation"
    read inp

    echo "Enter the operands"
    read n1
    read n2

    case $inp in
        1) 
        sum=`expr $n1 + $n2`
        echo "Sum = "$sum
        ;;
        2)
        sum=`expr $n1 - $n2`
        echo "Sub = "$sum
        ;;
        3)
        sum=`expr $n1 \* $n2`
        echo "Mul = "$sum
        ;;
        4)
        sum=`expr $n1 / $n2`
        echo "Div = "$sum
        ;;
		5)
        sum=`expr $n1 % $n2`
        echo "Mod = "$sum
        ;;
        *)
        do=false
        ;;
    esac
done