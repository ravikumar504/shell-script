#!/bin/bash

DAY=$(date)
WEEK=$(echo "$DAY" | cut -d " " -f1)
echo "$WEEK"

if ($WEEK -eq Sunday)
then 
    echo "today is holiday"
else
    echo "today i have go to school"
fi