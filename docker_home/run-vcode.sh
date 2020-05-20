#!/bin/bash

export PLATFORMIO_HOME_DIR=$HOME/docker_share/vcode/.platformio
code --user-data-dir=$HOME/docker_share/vcode/user --extensions-dir $HOME/docker_share/vcode/extensions $@

