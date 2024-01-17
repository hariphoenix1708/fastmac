#! /bin/bash

#
# Script for building Android arm64 Kernel
#
sudo apt-get update -y
git config --global user.name "hariphoenix1708"
git config --global user.email "hariv1708@gmail.com"
git config --global color.ui true
sudo apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
sudo apt-get install -y openjdk-11-jdk
sudo apt-get install -y wget
sudo apt-get install -y jq
git clone https://github.com/akhilnarang/scripts bscripts && cd bscripts && bash setup/android_build_env.sh && cd ..
cd $PWD/kernel_xiaomi_sweet
bash build.sh