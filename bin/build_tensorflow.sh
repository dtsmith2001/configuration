#!/usr/bin/env bash
#
# Build TensorFlow CPU using conda and pip
#
# See https://www.tensorflow.org/install/install_mac
#

which python
conda create -n tensorflow --clone root
source activate tensorflow
pip install tensorflow # assumption here is we have Python 3.x installed
python ../python/test_tensorflow.py
if [ $? -eq 0 ]
then
  echo "Finished successfully"
else
  echo "TensorFlow not installed successfully - minimal validation failed"
fi
