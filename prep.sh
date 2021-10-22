#!/bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y install tmate make tar ccache bc zip curl git wget python openssl rsync
git config --global user.name "phoenix-1708"
git config --global user.email "harikumar1708@gmail.com"
git config --global color.ui true
git clone https://github.com/akhilnarang/scripts bscripts && cd bscripts && bash setup/android_build_env.sh && cd ..
./setup.sh
