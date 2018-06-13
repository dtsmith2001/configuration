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

export PATH="/Application/anaconda/bin:${PATH}"

# prompt
if [ -f ${HOME}/.my_prompt ]
then
    source ${HOME}/.my_prompt
fi

if [ -f ${HOME}/.private_aliases ]
then
    source ${HOME}/.private_aliases
fi

if [ -f ${HOME}/.additional_startup ]
then
    source ${HOME}/.additional_startup
fi

# mpicc execution - petsc install via brew recommends
# sudo port select --set mpi mpich-mp-fortran
