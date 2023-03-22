#!/bin/bash

echo "Check disk usage in Linux system"
disk_size=`df -h | grep /dev/vda1 | awk '{print $5}' | cut -d '%' -f1`
echo "$disk_size% of disk is filled"
if [ $disk_size -gt 80 ];
then 
    echo "Disk is utilized more than 80%, exapnd disk or delete files soon"
else 
    echo "Enough disk is available"
fi