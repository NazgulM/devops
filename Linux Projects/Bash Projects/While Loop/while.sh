#!/bin/bash
df -Pkh | grep -v 'Filesystem' > /tmp/df.status
while read DISK
do
   LINE=`echo $DISK | awk '{print $1, "\t", $6, "\t", $5. " used", "\t", $4, " free space"}'`
   echo -e $LINE
   echo 
done < /tmp/df.status