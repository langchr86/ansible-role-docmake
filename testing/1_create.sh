#! /bin/bash -e

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

distro=${1:-ubuntu-jammy}

podman build --rm --file=${SCRIPT_DIR}/Dockerfile.${distro} --tag=${distro}:ansible .
