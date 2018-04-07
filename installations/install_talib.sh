#!/bin/bash

set -x

PREVIOUS_PWD=$PWD

mkdir -p $HOME/tmp/ta-lib
cd $HOME/tmp/ta-lib

sudo wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
sudo tar xvzf ta-lib-0.4.0-src.tar.gz
sudo rm ta-lib-0.4.0-src.tar.gz

cd $HOME/tmp/ta-lib/ta-lib

sudo ./configure --prefix=/usr
sudo make
sudo make install

rm -rf $HOME/tmp/ta-lib
cd $PREVIOUS_PWD
