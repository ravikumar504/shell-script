#!/bin/bash

 SOURCE="/home/ec2-user/"
FILESDELETE=$(find $SOURCE -name "*.log" -mtime +14)
# echo "$FILESDELETE"

while read -r file 
do  
    echo $file
done < $FILESDELETE