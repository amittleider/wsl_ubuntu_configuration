#!/bin/bash

sudo apt-get update

sudo apt-get install -y python-pip

# Upgrade it immediately because it apparently downloads an old version from apt-get
pip install --upgrade pip
