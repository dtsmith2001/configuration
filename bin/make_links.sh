#!/usr/bin/env bash

# make symlinks to all files

source_files=${HOME}/src/configuration/common

cd ${HOME}

if [ ! -f .aliases ]
then
    ln -s ${source_files}/.aliases .aliases
fi
if [ ! -f .bash_functions ]
then
    ln -s ${source_files}/.bash_functions .bash_functions
fi
if [ ! -f .bash_profile ]
then
    ln -s ${source_files}/.bash_profile .bash_profile
fi
if [ ! -f .bashrc ]
then
    ln -s ${source_files}/.bashrc .bashrc
fi
if [ ! -f .gitconfig ]
then
    ln -s ${source_files}/.gitconfig .gitconfig
fi
if [ ! -f .my_prompt ]
then
    ln -s ${source_files}/.my_prompt .my_prompt
fi
if [ ! -f .gdbinit ]
then
    ln -s ${source_files}/.gdbinit .gdbinit
fi
if [ ! -f .additional_startup ]
then
    ln -s ${source_files}/.additional_startup .additional_startup
fi

# below is for Raspberry PI 3B+ (armv7l) or Ubuntu (x86_64)
if [ $(uname -m) == "armv7l" ] || [ $(uname -m) == "x86_64" ]
then
    if [ ! -f ${HOME}/.config/systemd/user/ssh-agent.service ]
    then
        ln -s ${HOME}/.config/systemd/user/ssh-agent.service ${source_fles}/ssh-agent.service
    fi
fi
