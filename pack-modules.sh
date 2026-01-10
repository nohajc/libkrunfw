#!/bin/bash

VER=6.12.62

rm modules.squashfs || true
cd linux-$VER
mksquashfs modules.builtin fs/zfs/{zfs,spl}.ko ../modules.squashfs -no-strip -comp xz
