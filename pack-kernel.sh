#!/bin/sh

VER=6.12.62
tar cvzf linux-aarch64-Image-v$VER-anylinuxfs.tar.gz -C linux-$VER/arch/arm64/boot Image
