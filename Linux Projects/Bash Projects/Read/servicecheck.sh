#!/bin/bash
echo "welcome to service sstatus check script"
read -p "Enter the service name to check its status: " service_name
if [ -z $service_name ];
then
   echo "Please entr a valid service name " 
else 
   systemctl status $service_name
fi