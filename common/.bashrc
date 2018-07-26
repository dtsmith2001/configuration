# functions
if [ -f ${HOME}/.bash_functions ]
then
    source ${HOME}/.bash_functions
fi

# aliases - note we source ~/.bash_aliases as well, so that may overwrite
# your aliases
if [ -f ${HOME}/.aliases ]
then
    source ${HOME}/.aliases
fi

if [ -f ${HOME}/.bash_aliases ]
then
    source ${HOME}/.bash_aliases
fi

# prompt
if [ -f ${HOME}/.my_prompt ]
then
    source ${HOME}/.my_prompt
fi

# private aliases are not in github
# you can include aliases here that are not for public
# disclosure
if [ -f ${HOME}/.private_aliases ]
then
    source ${HOME}/.private_aliases
fi

# Use this to create local os-specific startup tasks
if [ -f ${HOME}/.additional_startup ]
then
    source ${HOME}/.additional_startup
fi
