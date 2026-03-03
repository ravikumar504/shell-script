

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




#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real projects will monitor for 70
MSG=""

while read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk -F " " '{print $NF}')
    #echo "Partition: $PARTITION , Usage: $USAGE"
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MSG+="High Disk usage on partition: $PARTITION Usage is: $USAGE \n "
    fi
done <<< $DISK_USAGE

echo -e "Message: $MSG"

echo "$MSG" | mutt -s "High Disk Usage" info@joindevops.com