#!/usr/bin/env bash

function prepare_instance {
    if [ "${1}" == "" ]
    then
        echo "Pass an instance address"
        exit 1
    fi
    sudo apt install build-essential \
        gcc g++ autotools-dev autoconf \
        libtool-bin make gdb zlib1g-dev \
        python3 \
        python3-setuptools \
        htop \
        -y
    sudo -H easy_install3 pip
    sudo -H pip3 install csvkit
    tmpfile=$(mktemp /tmp/${0}.XXXXXX) || exit 1)
    trap "rm -fr ${tmpfile}" EXIT
    (
        echo "put ${HOME}/Downloads/pgilinux-2018-184-x86-64.tar.gz"
        echo "quit"
    ) > ${tmpfile}
    sftp -b ${tmpfile} -i ~/.ssh/id_rsa_github ubuntu@${1}
    exit 0
}
