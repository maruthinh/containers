#!/bin/bash

docker build -t rockylinux-8.8-gui -f gui_from_docker_X11  .
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix rockylinux-8.8-gui
