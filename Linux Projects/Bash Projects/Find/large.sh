#!/bin/bash

result=$(du -a . | sort -n -r | head -n 10)

echo $result >> output