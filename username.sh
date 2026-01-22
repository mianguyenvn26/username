#!/bin/bash
# Mia Nguyen
# CPSC 298-01

echo -e "Rules for creating a valid username:\nThe only characters that can be used are:\n -lower case letters,\n -digits, and\n -the underscore character"
echo -e "It must start with a lower case letter\nIt must contain at least three but no more than 12 characters"

while true; do
  echo "Enter an username: "
  read -r username
  if [[ $username =~ ^[a-z][a-z0-9_]{2,11}$ ]]; then  
    echo "Valid username!"
    exit
  else
    echo "Invalid username! Please try again."
fi

done

