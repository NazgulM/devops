#!/bin/bash
echo "CPU Load average value check"
load=`top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF -2)}' | cut -d '%' -f1`
echo $load
if [[ ${load%.*} > 1 ]];
then 
    echo "CPU load is very high: $load"
else 
   echo "Load is normal"
fi