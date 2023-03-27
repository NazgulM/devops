# Linux projects

Through bash script yum install  httpd, tree, wget, epel-release, vim -y

```
#!/bin/bash

yum install httpd, tree, wget, epel-release, vim -y
```

Create the kaizen user, create groups (docker, kaizen) and add users from the provided list (students.txt) to kaizen group (using for loop) and add yourself to docker group

```
#!/bin/bash

useradd kaizen

groupadd docker 

for i in $(awk ‘(NR>1) {print $1}’ student.txt) ; do useradd $i; done

for i in $(awk ‘(NR>1) {print $1}’ student.txt) ; do usermod -aG kaizen $i ; done

useradd nazgul && usermod -aG docker nazgul
```

Make Selinux to permissive

* Connect to a server via SSH.
* Run the command: # setenforce 0.
* Check the current status of SELinux: # sestatus | grep “Current mode” Current mode: permissive.

```

[root@centos-01 ~]# getenforce
Enforcing
[root@centos-01 ~]# setenforce 0
[root@centos-01 ~]# getenforce
Permissive
```

Add the provided aliases (k=kubectl, ti=terraform init, mk=mkdir), and make sure that they are present even on reboot

```
vi .bashrc
alias k=‘kubectl’
alias ti=‘terraform’
alias mk=‘mkdir’
source ~/.bashrc
```

Using the students information chart (students.txt) do:
Sort students by age from oldest to youngest
Print out all students that attended “harvard”
Replace Harvard with ‘H’, Cornell with ‘C’, and MIT with ‘M’ in one command

```
sort -k 2 -n student.txt 
grep -wi “harvard” student.txt 
sed -e ’s/Harvard/H/g’ -e ’s/Cornell/C/g’ -e ’s/MIT/M/g’ student.txt > students.txt
```

Change the permission of students.txt to 765

```
chmod 765 students.txt
```

In the provided list of students.txt, based on the ages of each student print out, “Red” if the user is 20-25 years of age
“Yellow” if the user is in 26-30 years of age
“Blue” if the user is in 31-35 years of age

```
for I in $(awk ‘{print $2}’ students.txt)  ; do

if [[ $I -ge 20 ]] | [[ $i -le 25 ]]
then
   echo “Red”
elif [[ $I -ge 26 ]] | [[ $i -le 30 ]]
then
   echo “Yellow”
elif [[ $I -ge 31 ]] | [[ $i  -le 35 ]]
then
   echo “Blue”
fi
done
```

Create a crontab set on 12 am of every Monday of every month to run “yum update -y”

```
crontab -e 
0 0 * * 1 yum update -y
```

1) Print the public IP of your VM and add it your /etc/hosts, with “my-public-ip.com” as its domain

```
Ifconfig 
Vi /etc/hosts
192.241.140.193  my-public-ip.com
```

Create two separate scripts, copy.sh and function.sh In function.sh, create functions that:
Creates a directory “kaizen”
Create a file named “I-was-here” with “<your name>” content in your file
Prints out options for the functions you wrote and accept inputs to choose which function they would like to execute

```
#!/bin/bash

*function1() {*
mkdir kaizen
*}*

*function2() {*
echo “Naza” >> I-was-here
*}*

read -p “Enter 1 for create folder or 2 for create file: “ num

if [[ $num == [12] ]]; then
   *function*”$num”
fi
```

In copy.sh do:
Make copy.sh accepts 3 inputs(IPs), when you run the script (eg: ./script 34.55.24.36 66.22.88.44 21.36.25.14),

```
#!/bin/bash

read -p “please enter the first remote IP: “ ip1

read -p “Please enter the second remote IP: “ ip2

echo “ First IP address is : $ip1 “
sleep 5s

echo “ Second IP address is: $ip2 “ 
~                                         
Execute the functions in function.sh, in the provided hosts (ip addresses) 
scp /root/function.sh root@157.230.95.36:/root/

ssh -t root@157.230.95.36 mkdir naza

```

```
lscpu | grep -e "^CPU(s):" | cut -d ":" -f2 | awk '{print $1}'
```
