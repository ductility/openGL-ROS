#!/bin/bash

#
# vscode should be included in the docker image 
# otherwise you may install the vscode again when you launch the docker image again
#
#wget -O $HOME/docker_share/code_1.33.1-1554971066_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
#sudo dpkg -i $HOME/docker_share/code_1.33.1-1554971066_amd64.deb 

mkdir -p $HOME/docker_share/vcode/user
mkdir -p $HOME/docker_share/vcode/extensions

#export PLATFORMIO_HOME_DIR=$HOME/docker_share/vcode/.platformio
#code --user-data-dir=$HOME/docker_share/vcode/user --extensions-dir $HOME/docker_share/vcode/extensions --install-extension platformio.platformio-ide --force
#code --user-data-dir=$HOME/docker_share/vcode/user --extensions-dir $HOME/docker_share/vcode/extensions --install-extension ms-vscode.cpptools --force
$HOME/run-vcode.sh --install-extension platformio.platformio-ide --force
$HOME/run-vcode.sh  --install-extension ms-vscode.cpptools --force

