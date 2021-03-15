#! /bin/bash -e

docker rm -f test-container

docker image prune --force
