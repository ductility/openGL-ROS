#!/bin/bash

if [ -z "$*" ]; then
    echo 'no parameter specified'
    exit -1
fi

./run-docker.sh /ros_entrypoint2.sh $@

