#! /bin/bash -e

ANSIBLE_PYTHON_INTERPRETER=/usr/bin/python3

idempotence=$1

echo "Install collections"
ansible-galaxy collection install community.general

echo "Running syntax checks"
env ANSIBLE_FORCE_COLOR=1 ansible-playbook /etc/ansible/roles/ansible-role-docmake/testing/playbook.yml --syntax-check

echo "Running playbook"
env ANSIBLE_FORCE_COLOR=1 ansible-playbook /etc/ansible/roles/ansible-role-docmake/testing/playbook.yml

if [ "${idempotence}" = "--idempotence" ]; then
echo "Running playbock again and test Idempotence"
env ANSIBLE_FORCE_COLOR=1 ansible-playbook /etc/ansible/roles/ansible-role-docmake/testing/playbook.yml \
    | tee ansible.log \
    | grep -q 'changed=0.*failed=0' \
    && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && cat ansible.log && exit 1)
fi

echo "Check all installed applications:"
which drawio
which gpp
which markdownlint
which pandoc
which pdflatex
which texfot
