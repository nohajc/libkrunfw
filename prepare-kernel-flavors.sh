#!/bin/bash

mkdir -p linux-{4,16}k
if [ ! -f linux-4k/.config ]; then
    cp config-libkrunfw_aarch64 linux-4k/.config
fi

if [ ! -f linux-16k/.config ]; then
    cp config-libkrunfw_aarch64 linux-16k/.config
fi

cd linux-6.12.62
make mrproper

echo "Let's configure the 4K-pages kernel"
read -p "Press enter to continue "

make O=../linux-4k menuconfig
