#!/usr/bin/env bash

docker \
  run --name lfs \
  --rm \
  -v "$HOME/code/lfs/":/home/brian/code/lfs \  
  -it bmg/lfs
