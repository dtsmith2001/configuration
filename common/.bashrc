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

# added by Anaconda3 4.1.1 installer
export PATH="/Applications/anaconda/bin:${PATH}"

# prompt
if [ -f ${HOME}/.my_prompt ]
then
    source ${HOME}/.my_prompt
fi

# make sure the current directory is in the path to avoid annoyances
export PATH=.:${PATH}
