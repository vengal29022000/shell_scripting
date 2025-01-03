#!bin/bash

movies= ("RRR","KGF","V")   # defining a array

echo "first movie is : ${movies[0]}"    # printing the name of first movie with reference of index

echo "second movie is : $movies[1]"     

echo "third movie is : ${movies[2]}"

echo "all movies are : ${movies[@]}             # it prints all movies. Here @ indicates all