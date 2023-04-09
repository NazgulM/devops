# Ansible Variables and handlers

Handlers are just like other tasks in playbook, the difference being that they are triggered using the notify directive, and are only run when there is change of state.

A handler should have a globally unique name within the playbook.

If multiple handlers are defined with the same name, only the first one will be called. The remaining handlers will be ignored.
