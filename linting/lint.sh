#! /bin/bash -e

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd ${SCRIPT_DIR}

docker build --rm --tag=ansible-lint .

docker run \
  --rm \
  -v ${SCRIPT_DIR}/../:/etc/ansible/roles/ansible-role-docmake/:ro \
  ansible-lint \
  ansible-lint \
    --exclude /root/.cache \
    -c /etc/ansible/roles/ansible-role-docmake/.ansible-lint \
    /etc/ansible/roles/ansible-role-docmake/testing/playbook.yml
