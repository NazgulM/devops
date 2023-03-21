#!/bin/bash

echo "Please enter the machine name :$1"
if [ $# -eq 1 ]
then
   ssh root@$1 >> /dev/null 2>&1
   if [ $? -eq 0 ]
   then
       echo "ssh was successful"
   else
       echo "ssh is failing"
   fi
else
   echo "Number of arguments need hostname"
fi
~                                                                               
~                                                                               
~                                                                               
~                                                                                             
                                                                                                                         