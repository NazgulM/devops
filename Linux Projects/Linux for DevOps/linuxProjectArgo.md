# Updated Linux Projects

1) Create 4 ssh based droplet in Digital Ocean in one time

```
ssh root@ipAddress
vi students.txt
```

Copy all students from .xlsx file

2) Download the provided packages (httpd, tree, wget, epel-release, vim)

```
#!/bin/bash 

yum install httpd, tree, wget, epel-release, vim -y

``

3) Download and start the docker software (link: https://docs.docker.com/engine/install/centos/)

```

# !/bin/bash

yum install -y yum-utils
yum-config-manager \
    --add-repo \
    <https://download.docker.com/linux/centos/docker-ce.repo>

yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo systemctl start docker

systemctl status docker

sudo docker run hello-world

```

3) Create the “kaizen” user

useradd kaizen

4) Create a passwordless login for kaizen user from bastion to other VMs

```

su kaizen
ssh-keygen
ls .ssh
cd .ssh
cat id-rsa.pub
history
vi /etc/ssh/sshd_config

uncomment PasswordAuthentication YES

systemctl restart sshd
passwd for all 2 nodes machines

su - kaizen
variables remote1=IPaddress
         remote2= ipAddress

for i in ${remote1} ${remote2} ; do ssh-copy-id root@$i; done

echo $remote1 $remote2

systemctl after uncomment sshd_config in remote machines

ssh root@remote1
ssh root@remote2

```

```

useradd kaizen

remote1=ipAddress
remote2=ipAddress

mkdir /home/kaizen/.ssh
ssh-keygen -t rsa -b 4096 -f /home/kaizen/.ssh/id_rsa -N ""

for i in ${remote1} ${remote2} ; do ssh-copy-id "/home/kaizen/.ssh/id_rsa.pub" root@$i; done

```

5) Create groups (docker, kaizen) and add users from the provided list (students.txt) to kaizen group (using for loop) and add yourself to docker group

Already created user kaizen which autom.creates kaizen group, and after installing docker, created docker group

```

cd ~

cat students.txt | sed '1d' | awk '{print $1}'
for i in $(cat students.txt | sed '1d' | awk '{print $1}'); do useradd $i usermod -aG kaizen $i; done
cat /etc/shadow
cat /etc/gshadow

```

6) Make Selinux to permissive

```

setenforce 0
 vi /etc/selinux/config
  can change in vi editor to permissive
  or through CLI
  sed -i 's/SELINUX=.*/SELINUX=permissive/g' /etc/selinux/config

```

7) Add the provided aliases (k=kubectl, ti=terraform init, mk=mkdir), and make sure that they are present even on reboot

```

ls-la
echo 'alias k-kubectl' >> ~/.bashrc
echo "alias ti=terraform init" >> ~/.bashrc
echo "alias mk=mkdir" >> ~/.bashrc

or add in vi editor

```

8) Using the students information chart (students.txt) do:
Sort students by age from oldest to youngest
Print out all students that attended “harvard”
Replace Harvard with ‘H’, Cornell with ‘C’, and MIT with ‘M’ in one command

```

cat students.txt | sed '1d' | sort -k2 -r

cat students.txt | grep -i "harvard"

sed 's/Harvard/H/g'; 's/Cornell/C/g'; 's/MIT/M/g' students.txt  > new_students.txt

without /g it will change only one word, /g - globally change the word everywhere

cat new_students.txt

```

9) Change the permission of students.txt to 765

```

chmod 765 students.txt
``

10) In the provided list of students.txt, based on the ages of each student print out, “Red” if the user is 20-25 years of age
“Yellow” if the user is in 26-30 years of age
“Blue” if the user is in 31-35 years of age

```

sed '1d' students.txt > pure_students.txt 

while read line; do 
name = $(echo $line | awk '{print $1}')
age=$(echo $line |awk '{print $2}')

if [ ${age} -gt "19" ] && [ ${age} -lt "26" ]; then echo "$name is RED";
elif [ ${age} -gt "25" ] && [ ${age} -lt "31" ]; then echo "$name is YELLOW";
elif [ ${age} -gt "29" ] && [ ${age} -lt "36" ]; then echo "$name is BLUE";
else
    echo "$name is unknown age"
fi

done <<< pure_students.txt

```

11) Create a crontab set on 12 am of every Monday of every month to run “yum update -y”

```
crontab -l
crontab -e

0 0 * * 1 yum update -y

```

```
echo "0 0 * * 1 yum update -y" | crontab -

send this to crontab 
```

12) Print the public IP of your VM and add it your /etc/hosts, with “my-public-ip.com” as its domain

```
ifconfig
grab from eth0: inet
or 
curl ifconfig.co

public_ipv4= $(curl ifconfig.co)
echo "$public_ipv4 my-public-ip.com" > /etc/hosts

```

13) Create two separate scripts, copy.sh and function.sh In function.sh, create functions that:
Creates a directory “kaizen”
Create a file named “I-was-here” with “<your name>” content in your file
Prints out options for the functions you wrote and accept inputs to choose which function they would like to execute
In copy.sh do:
Make copy.sh accepts 3 inputs(IPs), when you run the script (eg: ./script 34.55.24.36 66.22.88.44 21.36.25.14),
Execute the functions in function.sh, in the provided hosts (ip addresses)

```
touch copy.sh function.sh
chmod +x copy.sh function.sh

vi function.sh

#!/bin/bash

name=Naza

function mk_dir {
mkdir kaizen
}

function mk_file_name {
echo $name < i-was-here
}

read -p "Create Directory (1) || Make filename (2): " value

if [ $value -eq 1 ]; then 
mk_dir
elif [ $value -eq 2 ]; then
mk_file_name
else
   echo "Error: no such option"
fi

bash function.sh or ./function.sh

```

```
vi copy.sh

#!/bin/bash

for i in "$@"; do 
scp function.sh root@$i:~
ssh root@$i 'bash function.sh"
done

then in terminal type bash copy.sh $remote1 $remote2 or bash copy.sh ipAddress

cp function.sh /home/kaizen/.
cd ~, cd /home/kaizen
chown kaizen:kaizen copy.sh function.sh 

ssh root@remoteIpAddress

```

copy.sh ----> function.sh ----> copy.sh <ip-address> ----> do function.sh in <ip-address>
