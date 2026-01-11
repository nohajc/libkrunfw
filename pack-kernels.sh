#!/bin/sh

VER=6.12.62

#tar cvzf linux-aarch64-Image-v$VER-anylinuxfs.tar.gz -C linux-$VER/arch/arm64/boot Image

TAR_NAME=linux-aarch64-Images-v$VER-anylinuxfs.tar
IMAGE_PATH=arch/arm64/boot

tar cf $TAR_NAME -C linux-16k/$IMAGE_PATH Image
tar rf $TAR_NAME --transform='s/Image/Image-4K/' -C linux-4k/$IMAGE_PATH Image
gzip $TAR_NAME
