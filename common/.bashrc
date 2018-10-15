# functions
if [ -f ${HOME}/.bash_functions ]
then
    source ${HOME}/.bash_functions
fi

if [ -f ${HOME}/.bash_aliases ]
then
    source ${HOME}/.bash_aliases
fi

# aliases - note we source ~/.bash_aliases as well,
# so this step may overwrite your aliases
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

export PATH=/Users/driver.dan12/anaconda3/bin:${PATH}
export PATH=/opt/arduino-1.8.7:${PATH}
