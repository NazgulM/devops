#!/bin/bash
echo "This is my shell script name: $0"
echo "This is first argument passed to my script: $1"
echo "This is second argument passed to my script: $2"
echo "This is third argument passed to my script: $3"
if [ $# -eq 0 ];
then
    echo "Please pass at least one argument"
else 
    echo "Arguments passed is $#"
fi