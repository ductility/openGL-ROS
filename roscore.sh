#!/bin/bash

# ./roscore.sh -e ROS_HOSTNAME=192.168.0.4 -e ROS_MASTER_URI=http://192.168.0.4:11311
./ros-entry.sh roscore $@

