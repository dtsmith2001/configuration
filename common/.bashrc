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
export PATH=/anaconda/bin:${PATH}

# prompt
if [ -f ${HOME}/.my_prompt ]
then
    source ${HOME}/.my_prompt
fi

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# make sure the current directory is in the path to avoid annoyances
export PATH=.:${PATH}:/Library/PostgreSQL/9.5/bin

# bazel command-line completions
if [ exists "/usr/local/lib/bazel/bin/bazel-complete.bash" ]
then
  source /usr/local/lib/bazel/bin/bazel-complete.bash
fi
