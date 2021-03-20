ansible-role-docmake
====================

[![Software Build](https://github.com/langchr86/ansible-role-docmake/workflows/ansible_run/badge.svg)](https://github.com/langchr86/ansible-role-docmake/actions?query=workflow%3Aansible_run)

Companion ansible role for [docmake](https://github.com/langchr86/docmake) to install needed tools.


Requirements
------------

This role should work on most linux distributions.
Tested on Ubuntu and Debian.
See [`ansible_run.yml`](.github/workflows/ansible_run.yml) for more information about CI-testing.


Role Variables
--------------

All variable that may be manipulated by the user are collected in [`defaults/main.yml`](defaults/main.yml) .
See the inline description there.


Dependencies
------------

This role is completely self-containing and has no dependencies to other ansible roles.


Usage
-----

> If you just want to use these tools without creating your own playbook etc.
> you have to just install ansible and then run [`run_local.sh`](run_local.sh).

See [`testing/playbook.yml`](testing/playbook.yml) for example playbook.

To be able to install the role you can use the command:

~~~
ansible-galaxy install git+https://github.com/langchr86/ansible-role-docmake.git,master
~~~

or you define it in [`requirements.yml`](https://docs.ansible.com/ansible/latest/galaxy/user_guide.html#installing-multiple-roles-from-a-file):

~~~
- src: 'https://github.com/langchr86/ansible-role-docmake.git'
  version: 'master'
~~~

and then install with:

~~~
ansible-galaxy install -r requirements.yml
~~~


License
-------

MIT


Versioning
----------

There are no version numbers, releases, tags or branches.
The master should be considered the current stable release.
All other existing branches are feature/development branches and are considered unstable.


Author Information
------------------

Christian Lang: [lang.chr86@gmail.com](mailto:lang.chr86@gmail.com)
