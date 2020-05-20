#!/bin/bash
#set -x

xhost +local:

mkdir -p docker_share

USER_UID=$(id -u)
TAG='ros-kinetic-dev'
IMAGE=$(docker inspect --format='{{.Config.Image}}' $TAG)
[ -c /dev/ttyACM0 ] && TTY='--device=/dev/ttyACM0'
#IPADDR="--hostname="$(hostname -I | cut -d' ' -f1)

# filter parameters
# run-docker.sh -e ROS_HOSTNAME=192.168.0.4 -e ROS_MASTER_URI=http://192.168.0.4:11311 /ros-entrypoint2.sh roscore
# ./roscore.sh -e ROS_HOSTNAME=192.168.0.4 -e ROS_MASTER_URI=http://192.168.0.4:11311
# ENV_PARAMS=-e ROS_HOSTNAME= -e ROS_MASTER_URI=http://localhost:11311 
ENV_PARAMS=()
OTHER_PARAMS=()
args=("$@")
for ((a=0; a<"${#args[@]}"; ++a)); do
    case ${args[a]} in
        #-e) ENV_PARAMS+=("${args[a+1]}"); unset args[a+1]; ;;
        -e) ENV_PARAMS+=("${args[a]} ${args[a+1]}"); ((++a)); ;;
        --env=*) ENV_PARAMS+=("${args[a]}"); ;;
        *) OTHER_PARAMS+=("${args[a]}"); ;;
    esac
done

#echo env=${ENV_PARAMS[@]}
#echo other=${OTHER_PARAMS[@]}
#exit 0

if [ -z "$IMAGE" ]; then
    IMAGE='travis/kinetic:dev'
    docker run --gpus all -it  \
      --init \
      --net=host \
      $IPADDR \
      --user=$USER_UID \
      -e DISPLAY=$DISPLAY \
      -e QT_GRAPHICSSYSTEM=native \
      -e CONTAINER_NAME=$TAG \
      -e USER=$USER \
      --env=UDEV=1 \
      --env=LIBUSB_DEBUG=1 \
      ${ENV_PARAMS[@]} \
      -v "/tmp/.X11-unix:/tmp/.X11-unix" \
      -v "$PWD/docker_share:/docker_share" \
      --volume=/run/user/${USER_UID}/pulse:/run/user/1000/pulse \
      --group-add=plugdev \
      --group-add=video \
      --device=/dev/dri:/dev/dri \
      $TTY \
      --name=$TAG \
      $IMAGE \
      ${OTHER_PARAMS[@]}

      echo docker stop $TAG
      docker stop $TAG
      echo docker rm $(docker ps -a -q)
      docker rm $(docker ps -a -q)

else
    #docker start $TAG
    if [ -z "$*" ]; then
        docker exec -it $TAG /bin/bash
    else
        #docker exec -it $TAG $@

        docker exec \
            ${ENV_PARAMS[@]} \
            -it $TAG \
            ${OTHER_PARAMS[@]} 

    fi
fi


xhost -local:
#set +x
