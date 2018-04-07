#!/bin/bash

sudo apt update && sudo apt install -y \
    build-essential \
    software-properties-common \
    python-software-properties \
    libgfortran3 \
    python-qt4 \
    unzip \
    python3-pip \
    python3-tk \
    mongodb \
    htop \
    keychain

# update pip
pip3 install --upgrade pip
