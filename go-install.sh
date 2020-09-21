#!/bin/bash

version='15.2'

cd ~

curl -O https://dl.google.com/go/go1.$version.linux-amd64.tar.gz

tar xvf go1.$version.linux-amd64.tar.gz

sudo chown -R root:root ./go

sudo mv go /usr/local

sudo echo 'export GOPATH=$HOME/work' >> ~/.profile

sudo echo 'export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin' >> ~/.profile

source ~/.profile
