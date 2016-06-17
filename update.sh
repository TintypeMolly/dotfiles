#!/bin/bash

_common_update() {
    npm upgrade -g npm
    PYENV_VERSION=3.5.1 pip install -U pip setuptools virtualenv
    PYENV_VERSION=2.7.11 pip install -U pip setuptools virtualenv
}

if [ `uname` == "Darwin" ]
then
    echo "Updating macOS machine..."
    brew update
    brew upgrade
    brew cleanup
    _common_update
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
        _common_update
        echo "Reboot is recommended after update script"
        echo "try 'sudo reboot'"
    fi
fi

