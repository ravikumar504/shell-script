#!/bin/bash


WEEK=$(date | cut -d " " -f1)
echo "$WEEK"

if [$WEEK -ne Sunday]
then 
    echo "today go to school"
else
    echo "today holiday"
fi