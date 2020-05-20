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

