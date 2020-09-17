FROM ubuntu:20.04

# Stop tzdata for hanging the image build
ENV TZ=Europe/Helsinki
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -qqy && \
    apt-get install -qqy \
    build-essential \
    bison \
    gawk \
    m4 \
    texinfo \
    python3

# ensure not to use dash, prefer bash
RUN ln -sf bash /bin/sh

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN groupadd -g 1000 brian && useradd -r -g 1000 -u 1000 --shell /bin/bash --create-home --home /home/brian brian

WORKDIR /home/brian
USER brian
