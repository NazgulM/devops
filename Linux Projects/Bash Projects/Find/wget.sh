#!/bin/bash
echo "Download the prometheus binaries"
if [ -e /root/prometheus-2.43.0.linux-amd64.tar.gz ];
then
   echo "file is already existing so no need to download"
   tar -zxvf /root/prometheus-2.43.0.linux-amd64.tar.gz 
else
   echo "Binary does not exist in system firts we need to download it"
   wget https://github.com/prometheus/prometheus/releases/download/v2.43.0/prometheus-2.43.0.linux-amd64.tar.gz
   tar -zxvf /root/prometheus-2.43.0.linux-amd64.tar.gz 
   echo " File has been extracted, you can start use Prometheus"
fi