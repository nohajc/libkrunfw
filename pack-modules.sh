#!/bin/sh

rm modules.squashfs
cd linux-6.12.34
mksquashfs modules.builtin fs/zfs/{zfs,spl}.ko ../modules.squashfs -no-strip -comp xz
