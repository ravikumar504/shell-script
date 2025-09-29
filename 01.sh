#!/bin/bash

echo "all variables:$@"
echo "no of variables:$#"
echo "name of the script:$0"
echo "$*"
echo "$$"
sleep 10 &
echo "$!"
echo "$?"