#!bin/bash

echo "enter the namber"
read number
if [ $number -gt 100 ]      # the conddition should be in between space
then
    echo "the given number is greater than 100"
else
    echo "given number is lessthan or equal to 100"
fi
