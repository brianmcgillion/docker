FROM ubuntu:18.04

ARG VERSION=1.19.4
ARG FILENAME=mendeleydesktop_${VERSION}-stable_amd64.deb

RUN apt-get update && \
  apt-get install -qqy \
    wget \
    x11-apps \
    python \
    gconf2 \
    desktop-file-utils \
    libgl1-mesa-glx \
    libegl1-mesa \
    libnss3 \
    libxcomposite1 \
    libxi6 \
    libxtst6 \
    libxrandr2 \
    libasound2

RUN wget https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/${FILENAME}

RUN dpkg -i ${FILENAME}
RUN apt-get -qqy install -f

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /usr/share/X11/xkb
ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

RUN groupadd -g 1000 brian && useradd -r -g 1000 -u 1000 --shell /bin/bash --create-home --home /home/brian brian

ENV DISPLAY :0

WORKDIR /home/brian
USER brian
RUN mkdir -p .local/share/data
CMD mendeleydesktop
