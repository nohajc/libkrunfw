#!/bin/bash

rm modules.squashfs || true
cd linux-16k
mksquashfs modules.builtin fs/zfs/{zfs,spl}.ko ../modules.squashfs -no-strip -comp xz
