#!/bin/bash

echo "Script to install git"
echo "Installation is started"
if [ "$(uname)" == "Linux" ];
then
   echo "This is Linux box, installing git"
   yum install git -y
elif [ "$(uname)" == "Darwin" ];
then
    echo "This is not Linux box"
    echo "This is MacOs"
    brew install git
else
   echo "Not installing"
fi
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                   