#! /bin/bash -e

podman rm -f test-container

podman image prune --force
