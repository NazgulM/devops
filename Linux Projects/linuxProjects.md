# Linux projects

1) Through bash script yum install  httpd, tree, wget, epel-release, vim -y

```
#!/bin/bash

yum install httpd, tree, wget, epel-release, vim -y
```

2) Create the kaizen user, create groups (docker, kaizen) and add users from the provided list (students.txt) to kaizen group (using for loop) and add yourself to docker group

```
#!/bin/bash

useradd kaizen

groupadd docker 

for i in $(awk ‘(NR>1) {print $1}’ student.txt) ; do useradd $i; done

for i in $(awk ‘(NR>1) {print $1}’ student.txt) ; do usermod -aG kaizen $i ; done

useradd nazgul && usermod -aG docker nazgul
```

3) Make Selinux to permissive

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

4) Add the provided aliases (k=kubectl, ti=terraform init, mk=mkdir), and make sure that they are present even on reboot

```
vi .bashrc
alias k=‘kubectl’
alias ti=‘terraform’
alias mk=‘mkdir’
source ~/.bashrc
```

5) Using the students information chart (students.txt) do:
Sort students by age from oldest to youngest
Print out all students that attended “harvard”
Replace Harvard with ‘H’, Cornell with ‘C’, and MIT with ‘M’ in one command

```
sort -k 2 -n student.txt 
grep -wi “harvard” student.txt 
sed -e ’s/Harvard/H/g’ -e ’s/Cornell/C/g’ -e ’s/MIT/M/g’ student.txt > students.txt
```

6) Change the permission of students.txt to 765

```
chmod 765 students.txt
```

7) In the provided list of students.txt, based on the ages of each student print out, “Red” if the user is 20-25 years of age
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

8) Create a crontab set on 12 am of every Monday of every month to run “yum update -y”

```
crontab -e 
0 0 * * 1 yum update -y
```

9)  Print the public IP of your VM and add it your /etc/hosts, with “my-public-ip.com” as its domain 
    
```
Ifconfig 
Vi /etc/hosts
192.241.140.193  my-public-ip.com
```

