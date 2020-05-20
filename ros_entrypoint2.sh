#!/bin/bash
set -e

>&2 echo "USER=$USER"
>&2 echo "HOME=$HOME"

# setup ros environment
>&2 echo source "/opt/ros/$ROS_DISTRO/setup.bash" 
source "/opt/ros/$ROS_DISTRO/setup.bash"
>&2 echo source "$HOME/docker_share/catkin_ws/devel/setup.bash"
source "$HOME/docker_share/catkin_ws/devel/setup.bash"
#echo source "$HOME/.bashrc"
#source "$HOME/.bashrc"

IPADDR=$(hostname -I | cut -d' ' -f1)
>&2 echo "IPADDR=$IPADDR"
>&2 echo "ROS_ROOT=$ROS_ROOT"
>&2 echo "ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH"
>&2 echo "ROS_HOSTNAME=$ROS_HOSTNAME"
>&2 echo "ROS_MASTER_URI=$ROS_MASTER_URI"

exec $@

