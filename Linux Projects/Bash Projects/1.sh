
#!/bin/bash

echo "Script to check status of code"
cat /etc/redhat-release
if [ $? -eq 0 ]
then
   echo "This is RedHat System"
else
   echo "This is not the RedHat System"
fi



~             