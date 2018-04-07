#!/bin/bash

PREVIOUS_PWD=$PWD
VENV_PATH=$HOME
cd $VENV_PATH

virtualenv -p /usr/bin/python3.6 venv

# Add this manually if needed.
# echo 'source $VENV_PATH/venv/bin/activate' >> ~/.bashrc

source $VENV_PATH/venv/bin/activate

cd $PREVIOUS_PWD
