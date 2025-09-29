#!/bin/bash

DAY=$(date)
echo "$DAY"

if ($DAY -eq Sunday)
then 
    echo "today is holiday"
else
    echo "today i have go to school"
fi