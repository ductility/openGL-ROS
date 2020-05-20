#/bin/bash

echo "source /opt/ros/kinetic/setup.bash" >> $HOME/.bashrc
echo "source \$HOME/docker_share/catkin_ws/devel/setup.bash" >> $HOME/.bashrc                               
#RUN echo "export ROS_HOSTNAME=localhost" >> $HOME/.bashrc
#RUN echo "export ROS_MASTER_URI=http://localhost:11311" >> $HOME/.bashrc
echo "alias cw='cd ~/docker_share/catkin_ws'" >> $HOME/.bashrc
echo "alias cs='cd ~/docker_share/catkin_ws/src'" >> $HOME/.bashrc
echo "alias cm='cd ~/docker_share/catkin_ws && catkin_make'" >> $HOME/.bashrc

