#!/bin/sh

cd ../zfs

LINUX_PATH=../libkrunfw/linux-6.12.62

./configure --with-linux=$LINUX_PATH --with-linux-obj=$LINUX_PATH --enable-linux-builtin
./copy-builtin $LINUX_PATH
