#!/bin/bash

# 1
#ln -s /docker_share $HOME/


# 2
# fix ros permissions
#sudo rosdep fix-permissions
#rosdep update

# 3
# init catkin workspace
source /opt/ros/kinetic/setup.bash
mkdir -p $HOME/docker_share/catkin_ws/src && cd $HOME/docker_share/catkin_ws/src && catkin_init_workspace
# rosserial
cd $HOME/docker_share/catkin_ws/src/
git clone https://github.com/ros-drivers/rosserial.git
# catkin make
cd $HOME/docker_share/catkin_ws && catkin_make


