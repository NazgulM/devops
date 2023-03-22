#!/bin/bash

echo "This program get first 10 biggest files in the filesystem passed via positional argument"
path="$1"
echo $path
du -ah $path |sort -hr | head -n 5 > /tmp/filesize.txt
echo "This is the list of big files in the filesystem $path"
cat /tmp/filesize.txt