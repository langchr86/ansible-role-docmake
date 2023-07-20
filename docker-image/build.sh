#! /bin/bash -e

SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

podman build -t ghcr.io/langchr86/docmake:latest --file ${SCRIPT_DIR}/Dockerfile ${SCRIPT_DIR}/..
