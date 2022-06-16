#! /bin/bash -e

podman build -t ghcr.io/langchr86/docmake:latest -f ./Dockerfile ..
