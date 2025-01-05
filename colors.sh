# installing mysql,git using  if condition and Functions
#!/bin/bash

user_id=$(id -u)           # if id -u gives output as 0 or non zero.O mean super user
R="\e-[31m"
G="\e-[32m"
Y="\e-[33m"

validate(){
    if [ $? -ne 0 ]
    then
        echo "$1 ...$R failure $N"
        exit 1
    else 
        echo "$1 ...$G success $N"
    fi      
}
if [ $user_id -ne 0 ]  
then
    echo "Error:You need super acess to run this"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then   
    dnf install mysql -y
    validate "installing mysql"
else
    echo "$Y You already installed Mysql $N"

fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    validate "installing git"
else
    echo "$Y git is already intalled on your server $N"
fi