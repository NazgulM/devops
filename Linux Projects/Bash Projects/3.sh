#!/bin/bash

echo "this is the function test"
testfun()
{
echo "This is begin of function"
echo "testing that function is working or not"
date 
hostname -f 
}

democheck()
{
echo "This is my demo function"
testfun
}
democheck

