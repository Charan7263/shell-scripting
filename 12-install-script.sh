#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "error: you have no sudo access to install the script"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "mysql installation failure"
        exit 1 
    else
        echo "mysql installation success"
    fi
else
    echo "mysql is already installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y
    if [ $? -ne 0 ]
    then 
    echo "git installation failure"
    exit 1
    else
    echo "git installation success"
    fi
else
    echo "git is already installed"
fi