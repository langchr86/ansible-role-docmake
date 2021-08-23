docmake docker image
====================

The full installation of ansible-role-docmake is also available as docker image.

Use with URI: `ghcr.io/langchr86/docmake:latest`

To be able to compile drawio images an internal fake X11 server needs to be run.
Therefore you need to always run `Xvfb :99 &` if drawio is used.
