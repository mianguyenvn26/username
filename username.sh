#!/bin/bash
#Mia Nguyen
# CPSC 298-01

echo -e "Rules for creating a valid username:\nThe only characters that can be used are:\n -lower case letters,\n -digits, and\n -the underscore character"


echo "Enter an username: "
read -r username

if [[ $username =~ ^[a-z0-9_]*$ ]]; then
    echo "Valid username!"
else
    echo "Invalid username! Please try again."
fi




 
