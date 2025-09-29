#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you need root access"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "mysql installation failure"
    else    
        echo "mysql installation success"
    fi
else 
    echo "mysql already installed"
fi
    
 
    







# NUMBER=$1

# if [ $NUMBER -gt 100 ]
# then
#     echo "given number is gt 100"
# else
#     echo "given number is less than 100"
# fi 


# WEEK=$(date | cut -d " " -f1)


# if [ $WEEK = Sunday ]
# then 
#     echo "today holiday"
# else
#     echo "go to school"
# fi




# # Get the day of the week (e.g., Sunday, Monday, etc.)
# day=$(date +%A)

# if [ "$day" = "Sunday" ]; then
#     echo "It's Sunday, holiday!"
# else
#     echo "I need to go to school."
# fi