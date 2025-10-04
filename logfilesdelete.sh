

# SOURCE="/home/ec2-user/"
# FILESDELETE=$(find $SOURCE -name "*.log" -mtime +14)
# # echo "$FILESDELETE"

# while read -r file 
# do  
#     echo $file
#     rm -rf $file
# done <<< $FILESDELETE




#!/bin/bash
FILEPATH="/home/ec2-user/test.txt"

if [ -e "$FILEPATH" ] && [ -r "$FILEPATH" ]
then 
    echo "file exists and readable"

else    
    echo "file not exist"
fi

