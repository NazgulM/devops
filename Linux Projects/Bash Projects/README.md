# Usage of bash scripts

1; Write a script to input the machine name, if the machine name entered correctly , we are gonna ssh to machine, if argument has not been passed, it gives the output Number of arguments need hostname

```
#!/bin/bash

echo "Please enter the machine name :$1"
if [ $# -eq 1 ]
then
   ssh root@$1
   uptime
else
   echo "Number of arguments need hostname"
fi
```

1; What is Kernel?
The kernel is a computer program that is the core of a computer’s operating system, with complete control over everything in the system.

2; Shell script is a list of commands in a computer program, that is run by the Unix shell which is command line interpreter. A shell script usually has comments that describe the steps. The different operations performed by shell scripts are program execution, file manipulation and text printing. The shell is a program that takes commands from the keyboard and gives them to OS to perform. Before we have the only interface available such as Unix like Linux, nowadays we have GUIs in addition to CLI such as shell

cat /etc/shells

```
#!/bin/bash
#! - called shebang or hashbang
```

The shebang plays an important role in shell scripting, specially while dealing with different types of shell.

The shebang is the combination of # (pound key) and ! mark. This character combination has a special meaning when it's used in the very first line of the script. It is used to specify the interpreter with which the given script will be run by default. So if the first line is #!/bin/bash  - means the interpreter should be bash shell.

4; A shell variable is a character, string which is store some value, could be an integer, filename, string or some shell command itself.

Using special variables, shell scripting supports variables such as $0, which refers to the name of the script, $1, $2, $3.

Task-1:

Write a program, which will help us to install git software in linux and macos:

```
#!/bin/bash

echo "Script to install git"
echo "Installation is started"
if [ "$(uname)" == "Linux" ];
then
   echo "This is Linux box, installing git"
   yum install git -y
elif [ "$(uname)" == "Darwin" ];
then
    echo "This is not Linux box"
    echo "This is MacOs"
    brew install git
else
   echo "Not installing"
fi
```
