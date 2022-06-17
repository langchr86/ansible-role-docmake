docmake container image
=======================

The full installation of ansible-role-docmake is also available as container image.

Use with URI: `ghcr.io/langchr86/docmake:latest`

To be able to compile drawio images an internal fake X11 server needs to be run.
Therefore you need to always run `Xvfb :99 &` if drawio is used.


Development
-----------

A valid login to the container registry is needed to push an image.

~~~
podman login -u langchr86 ghcr.io
~~~

Use a generated PAT as password: [Personal access tokens](https://github.com/settings/tokens).
