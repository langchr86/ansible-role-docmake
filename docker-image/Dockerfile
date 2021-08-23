FROM ubuntu:20.04

# make dpkg noninteractive
ENV DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true

# install basic tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        cmake \
        g++ \
        git \
        make \
        unzip \
        wget \
    && rm -rf /var/lib/apt/lists/*

# install ansible
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 --no-cache-dir install ansible

# install ansible-role-docmake
COPY ./ /tmp/ansible-role-docmake/
RUN /tmp/ansible-role-docmake/run_local.sh

# copy user local latex parts into global folder
RUN cp -r /root/texmf/tex/latex/ /usr/share/texlive/texmf-dist/tex/ \
    && texhash

# install and start xvfb as a workaround for drawio-desktop does not work without an X server
ENV DISPLAY=":99"
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         desktop-file-utils \
         xvfb \
    && rm -rf /var/lib/apt/lists/*
CMD Xvfb :99
