#!/bin/bash

gethostname()
{
echo "Hostname of your system is: $(hostname)"
}

systeminfo()
{
    gethostname
    echo "This is my machine ip address: $(hostname -i)"
    echo "this is my machine Available RAM : $(free -h)"
}
systeminfo