#!/bin/bash

OS=darwin

if [[ $OS == linux ]]
then
  cat /etc/os-release | grep -q 'ID="centos"'
  if [[ $? == 0 ]]
  then
    echo "You are using CentOS"
  fi
  cat /etc/os-release | grep -q 'ID=ubuntu'
  if [[ $? == 0 ]]
  then
    echo "You are using Ubuntu"
  fi
  cat /etc/os-release | grep -q 'ID="rocky"'
  if [[ $? == 0 ]]
  then
    echo "You are using Rocky Linux"
  fi
fi

if [[ $OS == darwin ]]
then
var=$(sw_vers | grep ProductName | awk '{print $2$3$4}')
    echo You are using $var
fi


