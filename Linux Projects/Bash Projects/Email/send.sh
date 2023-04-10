#!/bin/bash

yum update -y
yum install mailx -y

echo "This will go into the body of the mail." | mail -s "Hello Nazka" naza05@mail.ru