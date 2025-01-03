#!bin/bash
echo "please enter two numbers along sh commamd"
num1=$1    # No space between = and value
num2=$2
sum=$(($num1+$num2))   # Here ($num1+$num2) both number will add and the output is assigned to "sum" using "$" brfore ($num1+$num2)
echo "the sum of ${num1} and ${num2} is : $sum"  


