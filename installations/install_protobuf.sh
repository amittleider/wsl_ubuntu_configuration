#!/bin/bash

# Display the commands as they are executed
set -x

# Save the current working directory
START_PWD=$PWD

# Make a tmp directory
mkdir -p ~/tmp
cd ~/tmp

# Make sure you grab the latest version
PROTOC_VERSION=3.5.1
ZIP_FILE=protoc-$PROTOC_VERSION-linux-x86_64.zip
curl -OL https://github.com/google/protobuf/releases/download/v$PROTOC_VERSION/$ZIP_FILE

# Unzip
unzip $ZIP_FILE -o -d protoc3

# Move protoc to /usr/local/bin/
sudo mv protoc3/bin/* /usr/local/bin/

# Move protoc3/include to /usr/local/include/
sudo cp -r protoc3/include/. /usr/local/include/

# Change owner
sudo chown $USER /usr/local/bin/protoc
sudo chown -R $USER /usr/local/include/google

# Cleanup
rm -rf protoc3
rm $ZIP_FILE

# Move back to previous directory
cd $START_PWD
