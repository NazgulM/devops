# Real time project

## Install prometheus using Ansible which is monitoring tool used by the most of the organizations because its open source tool

1; Download the prometheus binary from the Prometheus official website
2: Copy and unarchive or unpack the prometheus binary on target system.
3; Create Prometheus as a service on the target system.

## Ansible template module

It helps to template a file out to a remote server.
You have a lot of variables in the system, template will copy those variables, and that variables are replaced, replace the Jinja2 interpolation syntax variables present in the template file with actual values. copy (scp) the file to the remote server.

## Ansible Loops and Conditionals

Sometime to repeat a task multiple a times, it is called as loops. Sometimes to perform some repetitive task one way would be duplicate tasks for multiple time something which can be quite tedious.

Conditionals
In Ansible, you can define conditions that will be evaluated before a task
is executed. When condition is not met, the task is then skipped. This is done with when keyword, which accepts expressions that are typically based on a variable or a fact.

