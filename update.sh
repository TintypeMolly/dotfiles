#!/bin/bash

common_update() {
    npm upgrade -g npm
}

if [ `uname` == "Darwin" ]
then
    echo "Updating macOS machine..."
    brew update
    brew upgrade
    brew cleanup
    common_update
elif [ `uname` == "Linux" ]
then
    if [ `whoami` != "root" ]
    then
        echo "Need root permission to update. Are you root?"
        exit 1
    else
        echo "Updating Ubuntu machine..."
        apt-get update
        apt-get upgrade -y
        apt-get dist-upgrade -y
        apt-get autoremove
        common_update
        echo "Reboot is recommended after update script"
        echo "try 'sudo reboot'"
    fi
else
    echo "This machine is neither Darwin nor Linux."
    exit 1
fi
