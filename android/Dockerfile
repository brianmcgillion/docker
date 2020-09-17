FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -qqy && \
    apt-get install -qqy \
    git-core \
    gnupg \
    flex \
    bison \
    build-essential \
    zip \
    curl \
    zlib1g-dev \
    gcc-multilib \
    g++-multilib \
    libc6-dev-i386 \
    lib32ncurses5-dev \
    x11proto-core-dev \
    libx11-dev \
    lib32z1-dev \
    libgl1-mesa-dev \
    libxml2-utils \
    xsltproc \
    unzip \
    fontconfig \
    git-core \
    gnupg \
    flex \
    bison \
    build-essential \
    zip \
    curl \
    zlib1g-dev \
    gcc-multilib \
    g++-multilib \
    libc6-dev-i386 \
    lib32ncurses5-dev \
    x11proto-core-dev \
    libx11-dev \
    lib32z1-dev \
    libgl1-mesa-dev \
    libxml2-utils \
    xsltproc \
    unzip \
    fontconfig \
    rsync

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /usr/share/X11/xkb
ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

RUN groupadd -g 1000 brian && useradd -r -g 1000 -u 1000 --shell /bin/bash --create-home --home /home/brian brian

ENV DISPLAY :0

WORKDIR /home/brian
USER brian
