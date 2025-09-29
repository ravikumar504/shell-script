#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo "given number is gt 100"
else
    echo "given number is less than 100"
fi 


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