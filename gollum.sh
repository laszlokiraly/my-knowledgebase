#!/bin/sh

PROJECT_NAME="${PWD##*/}"
DOCKER_IMAGE="gollumorg/gollum:latest"

open -a Safari "http://localhost:4567"

docker run --rm -it --name $PROJECT_NAME \
    -v $PWD:/wiki \
    -p 4567:4567 \
    $DOCKER_IMAGE /wiki
