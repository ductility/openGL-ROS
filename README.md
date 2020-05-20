## nvidia/opengl:1.1-glvnd-devel-ubuntu16.04 + ROS-kinetic-full Dockerfile

OpenGL을 Base Image로 사용하여 Gazebo 등 3D툴을 사용할 수 있게 한 Dokerfile과 기타등등

https://bitbucket.org/papaworks/ros-docker/src/master/

위 리포지토리의 Dockerfile 에서 Base Image를 수정하고 run-docker.sh를 수정한 것.


## How to use ROS docker

### setup

### RUN

#### run(initial)
(host)$ ./run-docker.sh
(docker)$ ./initial-workspace.sh

### run

to run roscore
```
(host)$ ./rosrun.sh roscore
```

to run other node like turtlesim
```
(host)$ ./rosrun.sh turtulesim turtlesim_node
(host)$ ./rosrun.sh turtlesim turtle_teleop_key
```

## 출처

Daily Maker 미디엄 블로그

https://twitter.com/rookiecj

https://medium.com/@rookiecj/%EA%B0%91%EC%9E%90%EA%B8%B0-ros-%EA%B7%B8%EB%A6%AC%EA%B3%A0-docker%EA%B0%9C%EB%B0%9C%ED%99%98%EA%B2%BD-5b941c9ff098

https://bitbucket.org/papaworks/ros-docker/src/master/
