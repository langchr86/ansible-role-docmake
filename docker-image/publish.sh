#! /bin/bash -e

HASH=$(git rev-parse --short HEAD)

docker push "ghcr.io/langchr86/docmake:${HASH}"
docker push "ghcr.io/langchr86/docmake:latest"
