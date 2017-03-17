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

if [ -f ${HOME}/.private_aliases ]
then
    source ${HOME}/.private_aliases
fi

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# make sure the current directory is in the path to avoid annoyances
# puts python 3 before the system python, which is 2.7
# at least on my MacBook Pro
export PATH=.:/anaconda/bin:/opt/local/lib/postgresql95/bin:${PATH}

# bazel command-line completions
if [ -f /usr/local/lib/bazel/bin/bazel-complete.bash ]
then
  source /usr/local/lib/bazel/bin/bazel-complete.bash
fi

# slepc and petsc recommendations
export PETSC_DIR=/opt/local/lib/petsc
export SLEPC_DIR=/opt/local/lib/slepc

# to fix a problem with EGit in Eclipse
export GIT_SSH=/usr/bin/ssh

# https://confluence.atlassian.com/bitbucketserver/permanently-authenticating-with-git-repositories-776639846.html
# git config --global credential.helper osxkeychain

# mpicc execution - petsc install via brew recommends
# sudo port select --set mpi mpich-mp-fortran
