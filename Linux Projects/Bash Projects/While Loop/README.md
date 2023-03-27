# Projects with while loop

```
#!/bin/bash
df -Pkh | grep -v 'Filesystem' > /tmp/df.status
while read DISK
do
   LINE=`echo $DISK | awk '{print $1, "\t", $6, "\t", $5. " used", "\t", $4, " free space"}'`
   echo -e $LINE
   echo 
done < /tmp/df.status
```

Output:

```
./while.sh 
devtmpfs /dev 0% used 895M free space

tmpfs /dev/shm 0% used 919M free space

tmpfs /run 2% used 903M free space

tmpfs /sys/fs/cgroup 0% used 919M free space

/dev/vda1 / 2% used 59G free space

tmpfs /run/user/0 0% used 184M free space
```

2; Script check the filesystem utilization every 120 seconds store in a file

```
# !/bin/bash
while true
do
date >> /var/log/fs-monitor.txt
df -h >> /var/log/fs-monitor.txt
sleep 120
done
```
