#!/bin/bash

# special character which are predefined $1 $2 $3 etc

# all variables passed : $@
# number of variables : $#
# to print scrpt name : $0
# present working directory : $PWD
# home directory of current user : $HOME 
# to know who is running this script : $USER 
# to get the process ID of current script : $$
# to know the process ID of Last command : $!     #if exit status than sucess else fail to exicute the cmd
# to know last cmd exicuted : $?

echo "all variables passed : $@"
echo "number of variables : $#"
echo "script name : $0"
echo "present working directory : $PWD"
echo "home directory of current user : $HOME" 
echo "who is running this script : $USER" 
echo " process ID of current script : $$"
sleep 60&
echo "the process ID of Last command : $!"     #if exit status than sucess else fail to exicute the cmd
echo "exit status of last cmd exicuted : $?"

#OUTPUT

# all variables passed : 100 200 300
# number of variables : 3
# script name : spl_characters.sh
# present working directory : /home/ec2-user/shell_scripting
# home directory of current user : /home/ec2-user
# who is running this script : ec2-user
#  process ID of current script : 1499
# the process ID of Last command :1527
# exit status of last cmd exicuted : 0


