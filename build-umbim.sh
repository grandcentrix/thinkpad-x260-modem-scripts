#!/bin/sh
set -e

if [ ! -d libubox ]; then
    git clone git://git.openwrt.org/project/libubox.git
fi

(
    cd libubox
    cmake .
    make ubox

    sudo mkdir -p /usr/local/include/libubox
    sudo cp *.h /usr/local/include/libubox
    sudo cp libubox.so /usr/local/lib
    sudo ldconfig
)


if [ ! -d umbim ]; then
    git clone http://git.openwrt.org/project/umbim.git
fi

(
    cd umbim
    cmake .
    make

    sudo mkdir -p /usr/local/bin
    sudo cp umbim /usr/local/bin/umbim
)
