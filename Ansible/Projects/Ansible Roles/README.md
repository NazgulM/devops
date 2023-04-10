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

defaults: contains default variables for the role.

vars: contains variables for the role, variables in vars have higher priority than variables in defaults.

tasks: contains the main list of steps to be executed by the role

files: contain files which we want to be copied to the remote host. Just put the files and everything would be taken to the remote server.

templates: contain file templates which supports modifications from the role. Use Jinja2 templating language.

meta: metadata of role like an author, supported platform

handlers: contain handlers which could be invoke by notify directives and are associated by the service.

templates:

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

