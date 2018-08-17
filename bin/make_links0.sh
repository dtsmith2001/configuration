#!/usr/bin/env bash

# make symlinks to all files

cd ${HOME}

if [ ! -f .aliases ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.aliases .aliases
fi
if [ ! -f .bash_functions ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.bash_functions .bash_functions
fi
if [ ! -f .bash_profile ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.bash_profile .bash_profile
fi
if [ ! -f .bashrc ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.bashrc .bashrc
fi
if [ ! -f .gitconfig ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.gitconfig .gitconfig
fi
if [ ! -f .my_prompt ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.my_prompt .my_prompt
fi
if [ ! -f .gdbinit ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.gdbinit .gdbinit
fi
if [ ! -f .additional_startup ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.additional_startup .additional_startup
fi
if [ ! -f .ssh_agent ]
then
    ln -s ${HOME}/src/Vallum_DevOps/employees/dtsmith/.ssh_agent .ssh_agent
fi
