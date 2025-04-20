#!/bin/bash

set -e

TAG=$(git describe --exact-match --tags)
tar cvzf linux-aarch64-Image-$TAG.tar.gz -C linux-6.6.59/arch/arm64/boot Image 
