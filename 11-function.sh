#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "$0 started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
if [ $1 -eq 0 ]
then
    echo -e "$2 installed $G successfully $N"
else
    echo -e "$2 $R not installed $N, got errors"
     exit 1
fi

}

 if [ $ID -ne 0 ]
 then
    echo -e "$R you are not root user, please try with root user, exiting $N"
    exit 1
 else
    echo -e "$G you are root user, going further with installation $N"
fi
    

sudo yum install nginx -y &>> $TIMESTAMP
VALIDATE $? "nginx"

sudo yum install git -y &>> $TIMESTAMP
VALIDATE $? "git"

sudo yum install "telnet" -y &>> $TIMESTAMP
VALIDATE $? "telnet"