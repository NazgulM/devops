#!/bin/bash

echo "Please enter the commands"
today_date=$1
system_name=$2
system_ram=$3

if [ $# -eq 3 ]
then
   echo "this is expected output"
   echo "date: $1"
   echo "hostname: $2"
   echo "RAM:FREE: $3"
else
   echo "number of arguments passed to your script is not correct"
fi
~                                                                              