#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "error: you have no sudo access to install the script"
    exit 1
fi

dnf install mysqll -y