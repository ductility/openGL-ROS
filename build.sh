#!/bin/bash

# clean build
if [ "$1" == "clean" ]; then
    #docker builder prune
    docker build --no-cache --build-arg HOST_USER=$USER --tag 'travis/kinetic:dev' .
else 
    docker build --build-arg HOST_USER=$USER --tag 'travis/kinetic:dev' .
fi

