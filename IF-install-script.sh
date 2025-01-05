# installing mysql,git using  if condition
#!/bin/bash

user_id=$(id -u)           # if id -u gives output as 0 or non zero.O mean super user
if [ $user_id -ne 0 ]  
then
    echo "Error:You need super acess to run this"
    exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then   
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing mysql failure"
        exit 1
    else 
        echo "Installing mysql success"
    fi    
else
    echo "You already installed Mysql"

fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "installing git failure"
        exit 1
    else
        echo "Installing git....successful"

    fi
else
    echo "git is already intalled on your server"
fi

# dnf list installed mysql
# if [ $? -eq 0 ]
# then
#     echo "You already installed Mysql"
# else
#     echo "Installing Mysql...."
# fi

# dnf install mysql -y
# if [ $? -eq 0 ]
# then
#     echo "Mysql installed succesfully"
# else
#     echo "Installing Mysql....Failed"
# fi



# dnf list installed git
# if [ $? -eq 0 ]
# then
#     echo "You already installed git"
# else
#     echo "Installing git...."
# fi

# dnf install git -y
# if [ $? -eq 0 ]
# then
#     echo "git installed succesfully"
# else
#     echo "Installing git....Failed"
# fi
