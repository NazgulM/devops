#!/bin/bash

free=$(free -m | awk 'NR==2{printf "Memory usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }') | column -t

df=$(df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}') | column -t

top=$(top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}') | column -t

echo "======================================================"
free && df && top