# read option

```
#!/bin/bash
read -p "What is your name: " name
read -sp "Enter the password: "  password
echo $name
echo $password
read -p "It will time out in 10 seconds " -t 10
```

```
#!/bin/bash
echo "While demo ..."
while read -r line;
do
  echo "$line"
done < test.txt
```

Which will print content fo the test.txt file

```#!/bin/bash
echo "welcome to service status check script"
read -p "Enter the service name to check its status: " service_name
if [ -z $service_name ];
then
   echo "Please enter a valid service name " 
else 
   systemctl status $service_name
fi
```

