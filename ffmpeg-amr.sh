#!/bin/sh
apt remove ffmpeg -y
apt install yasm libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev -y
# 请自行修改版本号
wget https://ffmpeg.org/releases/ffmpeg-4.2.1.tar.xz
tar xvJf ffmpeg-4.2.1.tar.xz
cd ffmpeg-4.2.1
./configure --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-version3 --enable-shared
make
make install
ldconfig
