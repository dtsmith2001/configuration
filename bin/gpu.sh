#!/usr/bin/env bash

export PATH=${PATH}.:${HOME}/src/configuration/bin:/usr/local/cuda-9.2/bin

# fix Cloud9
wget -O - https://raw.githubusercontent.com/c9/install/master/install.sh | bash

# install node for Cloud9 support
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
nvm install node
source ~/.bashrc

# required
sudo apt install build-essential gcc g++ autotools-dev autoconf libtool-bin make gdb zlib1g-dev autoconf-archive zip -y

# llvm
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main"
sudo apt-get update
sudo apt-get install -y clang-6.0 clang-6.0-examples clang-format-6.0 clang-tidy-6.0 clang-tools-6.0

# cuda toolkit install
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.2.148-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.2.148-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda -y

cuda-install-samples-9.2.sh src

cd src/NVIDIA_CUDA-9.2_Samples

make TARGET_ARCH=x86_64 && echo "Success!"

echo "Edit ~/.ssh/authorized_keys and get public key for github"

exit 0
