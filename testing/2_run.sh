#! /bin/bash -e

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

distro=${1:-ubuntu-focal}

podman run \
  --detach \
  --volume="${SCRIPT_DIR}/../":/etc/ansible/roles/ansible-role-docmake:ro \
  --name=test-container \
  ${distro}:ansible
