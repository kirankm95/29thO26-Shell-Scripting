#!/bin/bash
PACKAGE=mysql
 ID=$(id -u)

 if [ $ID -ne 0 ]
 then
    echo "you are not root user, please try with root user, exiting"
    exit 1
 else
    echo "you are root user, going further with installation"
    sudo yum install $PACKAGE -y
        if [ $? -eq 0 ]
        then
            echo "$PACKAGE installed successfully"
        else
            echo "$PACKAGE not installed, got errors"
            exit 1
        fi
fi