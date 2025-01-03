#!bin/bash

echo "enter the namber"
read number
if [ $number -gt 100]
then
    echo "the given number is greater than 100"
else
    echo "giben number is lessthan or equal to 100"
fi
