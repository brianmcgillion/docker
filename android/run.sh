#!/usr/bin/env bash

docker \
  run --name android \
  --rm \
  -v /home/brian/code/android/:/home/brian/code/android \
  -it bmg/android-build
