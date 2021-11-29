#! /bin/bash -e

HASH=$(git rev-parse --short HEAD)

docker build -t "ghcr.io/langchr86/docmake:${HASH}" -f ./Dockerfile ..
docker build -t "ghcr.io/langchr86/docmake:latest" -f ./Dockerfile ..
