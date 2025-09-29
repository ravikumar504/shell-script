#!/bin/bash


# WEEK=$(date | cut -d " " -f1)
# echo "$WEEK"

# if [ "$WEEK" -ne "Sunday" ]
# then 
#     echo "today go to school"
# else
#     echo "today holiday"
# fi




# Get the day of the week (e.g., Sunday, Monday, etc.)
day=$(date +%A)

if [ "$day" = "Sunday" ]; then
    echo "It's Sunday, holiday!"
else
    echo "I need to go to school."
fi