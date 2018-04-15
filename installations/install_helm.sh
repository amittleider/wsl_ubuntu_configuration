#!/bin/bash

PREVIOUS_PWD=$PWD
VERSION="2.6.1"

#TODO: this script is broker wtf
mkdir -p ~/tmp
cd ~/tmp
curl -LO https://storage.googleapis.com/kubernetes-helm/helm-v2.6.1-linux-amd64.tar.gz
tar -zxvf helm-v2.6.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm
cd $PREVIOUS_PWD
