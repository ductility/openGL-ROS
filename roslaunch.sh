#!/bin/bash

if [ -z "$*" ]; then
    echo 'no parameter specified'
    exit -1
fi

./ros-entry.sh roslaunch $@

