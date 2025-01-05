# installing mysql,git using  if condition and Functions
#!/bin/bash

user_id=$(id -u)           # if id -u gives output as 0 or non zero.O mean super user
validate(){
    if [ $? -ne 0 ]
    then
        echo "$1 ...failure"
        exit 1
    else 
        echo "$1 ...success"
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
    validate() "installing myssql"
else
    echo "You already installed Mysql"

fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    validate() "installing git"
else
    echo "git is already intalled on your server"
fi