# functions
if [ -f ${HOME}/.bash_functions ]
then
    source ${HOME}/.bash_functions
fi

# aliases
if [ -f ${HOME}/.aliases ]
then
    source ${HOME}/.aliases
fi

# prompt
if [ -f ${HOME}/.my_prompt ]
then
    source ${HOME}/.my_prompt
fi

# private aliases are not in github
if [ -f ${HOME}/.private_aliases ]
then
    source ${HOME}/.private_aliases
fi

# Use this to create local os-specific startup tasks
if [ -f ${HOME}/.additional_startup ]
then
    source ${HOME}/.additional_startup
fi
