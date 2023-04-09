# Ansible Variables and handlers

Handlers are just like other tasks in playbook, the difference being that they are triggered using the notify directive, and are only run when there is change of state.

A handler should have a globally unique name within the playbook.

If multiple handlers are defined with the same name, only the first one will be called. The remaining handlers will be ignored.

Handlers always run in the order in which they are defined in the handlers section, and not in notify section.

If the state of task remains unchanged, the handler will not run.

Task1; Create user using variable

```
---
 - name: example for variables
   hosts: all
   vars:
     - name: testAnsible
   tasks:
     - name: create user
       user:
        name: "{{ name }}"
        state: present
```

Result in node1 machine:

```
cat /etc/passwd
testAnsible:x:1001:1001::/home/testAnsible:/bin/bash
```

Task 2; Create User using variable from file:

```
---
 - name: example for variables
   hosts: all
   vars_files:
     - varfiles
   tasks:
     - name: create user
       user:
        name: "{{ name }}"
        state: present

cat varfiles
name: Aruuke
```

Result of ansible-playbook ansible.yaml -i inventory.txt

```
[root@centos-controller ~]# ansible-playbook ansiblevariable.yaml -i inventory.txt 
[WARNING]: Found variable using reserved name: name

PLAY [example for variables] ***************************************************

TASK [Gathering Facts] *********************************************************
ok: [161.35.52.15]

TASK [create user] *************************************************************
changed: [161.35.52.15]

PLAY RECAP *********************************************************************
161.35.52.15               : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

cat /etc/passwd
Aruuke:x:1002:1002::/home/Aruuke:/bin/bash
```

Task 3;
Handler code only be active where is the notify, parallel to the module I have the notify directive, in notify section can give any name, in my case Start Apache, same parallel to tasks, will write handlers, same like tasks, name of the handler should be the same with notify content, using service module, it will first install httpd software, while installation is complete it will notify that Apache server is starts, and handler match with notify it will start the Apache server.

```
---
- name: Install Apache on RHEL server
  hosts: all
  tasks:
    - name: Install the latest version of Apache
      yum:
        name: httpd
        state: latest

      notify:
       - Start Apache

  handlers:
     - name: Start Apache
       service:
         name: httpd
         state: started
```

```
[root@centos-controller ~]# ansible-playbook handler.yaml -i inventory.txt 

PLAY [Install Apache on RHEL server] *******************************************

TASK [Gathering Facts] *********************************************************
ok: [161.35.52.15]

TASK [Install the latest version of Apache] ************************************
ok: [161.35.52.15]

PLAY RECAP *********************************************************************
161.35.52.15               : ok=2    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
```
