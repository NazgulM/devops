# Ansible Roles

Ansible roles help you to organize playbooks together. Allow to develop reusable automation components by grouping and encapsulating related automation artifacts like configuration files, tasks, handlers.
You can download the roles on www.galaxy.ansible.com

Another create yur customize roles and reuse it.

```
ansible-galaxy init naza
- Role naza was created successfully
cd naza/
ls
README.md  defaults  files  handlers  meta  tasks  templates  tests  vars
```

When creating the roles, you are getting the multiple folders created. All variables can be store vars folder. Whatever the playbook going to run all are store in tasks section. README.md what is the purpose of roles you can write in this file. Any file which your are writing and copy to the target system can be stored in templates folder.

Write the role:

```
cd tasks/
vi main.yaml
# tasks file for naza
- name: test ansible role modules
  service:
     name: httpd
     state: started

cd ~
vi ansiblerole.yaml
---
- name: calling some roles
  hosts: all
  roles:
   - naza
~                
```
