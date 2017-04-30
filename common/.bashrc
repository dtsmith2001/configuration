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

export PATH="/anaconda/bin:${PATH}"

# prompt
if [ -f ${HOME}/.my_prompt ]
then
    source ${HOME}/.my_prompt
fi

if [ -f ${HOME}/.private_aliases ]
then
    source ${HOME}/.private_aliases
fi

# https://confluence.atlassian.com/bitbucketserver/permanently-authenticating-with-git-repositories-776639846.html
# git config --global credential.helper osxkeychain

# mpicc execution - petsc install via brew recommends
# sudo port select --set mpi mpich-mp-fortran
