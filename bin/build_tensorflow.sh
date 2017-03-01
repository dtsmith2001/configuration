#!/usr/bin/env bash
#
# Install TensorFlow for CPU using conda env
#
# See https://www.tensorflow.org/install/install_mac
#

function check_python(parameter) {
  py_version=$(python --version 2>&1 | cut -f2 -d' ' | cut -f1 -d'.')
  if [ ${py_version} -gt 2 ]
  then
    return 1
  else
    return 0
  fi
}

function check_for_conda(parameter) {
  conda --version > /dev/null 2>&1
  if [ $? -ne 0 ]
  then
    echo "conda not found - do you have Anaconda or Miniconda installed?"
    return 0
  fi
  return 1
}

function set_up_env(parameter) {
  conda config --add channels conda-forge
  conda install tensorflow
  conda create -n tensorflow --clone root
  python ../python/test_tensorflow.py
  if [ $? -eq 0 ]
  then
    echo "Finished successfully"
  else
    echo "TensorFlow not installed successfully - minimal validation failed"
  fi
}

function clone_tensorflow(parameter) {
  git clone https://github.com/tensorflow/tensorflow.git
}

if [ check_python() ]
then
  set_up_env()
  clone_tensorflow()
fi
