# functions
if [ -f .bash_functions ]
then
    source .bash_functions
fi

# aliases
if [ -f .aliases ]
then
    source .aliases
fi

# added by Anaconda3 4.1.1 installer
export PATH="/Applications/anaconda/bin:${PATH}"

# prompt
if [ -f .my_prompt ]
then
    source .my_prompt
fi
