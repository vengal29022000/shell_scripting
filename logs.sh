# installing mysql,git using  if condition and Functions
#!/bin/bash

user_id=$(id -u)           # if id -u gives output as 0 or non zero.O mean super user
R="\e[31m"
G="\e[32m"
Y="\e[33m"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"     # Declaring path to use it line 28.Before doing that we need to create the folder in that path.

# logs_folder="var/log/shellscript-logs"  #"/var/log/shellscript-logs
# log_file=$(echo $0 | cut -d "." -f1)
# timestamp=($date + %d-%m-%y-%M-%S)
# log_file_name="$logs_folder/$log_file-$timestamp.log"

validate(){
    if [ $? -ne 0 ]
    then
        echo -e "$1 ...$R failure $N"
        exit 1
    else 
        echo -e "$1 ...$G success $N"
    fi      
}
echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME
# echo "Script started exicuting at : $timestamp" &>> $log_file_name

if [ $user_id -ne 0 ]  &>>$LOG_FILE_NAME
then
    echo "Error:You need super acess to run this"
    exit 1
fi

dnf list installed mysql &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
then   
    dnf install mysql -y    &>>$LOG_FILE_NAME
    validate "installing mysql"
else
    echo -e "$Y You already installed Mysql $N"

fi

dnf list installed git &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
then
    dnf install git -y
    validate "installing git"
else
    echo -e "$Y git is already intalled on your server $N"
fi