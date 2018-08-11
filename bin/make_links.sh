#!/usr/bin/env bash

# make symlinks to all files

cd ${HOME}

if [ ! -f .aliases ]
then
    ln -s ${HOME}/src/configuration/common/.aliases .aliases
fi
if [ ! -f .bash_functions ]
then
    ln -s ${HOME}/src/configuration/common/.bash_functions .bash_functions
fi
if [ ! -f .bash_profile ]
then
    ln -s ${HOME}/src/configuration/common/.bash_profile .bash_profile
fi
if [ ! -f .bashrc ]
then
    ln -s ${HOME}/src/configuration/common/.bashrc .bashrc
fi
if [ ! -f .gitconfig ]
then
    ln -s ${HOME}/src/configuration/common/.gitconfig .gitconfig
fi
if [ ! -f .my_prompt ]
then
    ln -s ${HOME}/src/configuration/common/.my_prompt .my_prompt
fi
if [ ! -f .gdbinit ]
then
    ln -s ${HOME}/src/configuration/common/.gdbinit .gdbinit
fi
if [ ! -f .additional_startup ]
then
    ln -s ${HOME}/src/configuration/common/.additional_startup
fi
