#!/usr/bin/env bash

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth

MENDELEY_DATA_DIR=".local/share/data/"

xhost +local:docker

docker \
  run --user 1000 -it \
  -v $XSOCK:$XSOCK \
  -v $XAUTH:$XAUTH \
  -v $HOME/Documents/mendeley_watching/:$HOME/Documents/mendeley_watchig \
  -v $HOME/Documents/Papers/:$HOME/Documents/Papers \
  -v $HOME/Documents/org/:$HOME/Documents/org \
  -v "$HOME/.config":$HOME/.config \
  -v "$HOME/${MENDELEY_DATA_DIR}":"$HOME/${MENDELEY_DATA_DIR}" \
  -e XAUTHORITY=$XAUTH \
  -e DISPLAY=$DISPLAY \
  davidgengenbach/mendeley-desktop:latest /bin/bash

xhost -local:docker

#-v "$(pwd)/.config":/root/.config \
#  -v "$(pwd)/${MENDELEY_DATA_DIR}":"/root/${MENDELEY_DATA_DIR}" \
