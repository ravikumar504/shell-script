#!/bin/bash

SOURCEDIR=/home/ec2-user/
Files_TO_DELETE=$(find $SOURCEDIR -name "*.log" -mtime +14)
echo "$FILES_TO_DELETE"