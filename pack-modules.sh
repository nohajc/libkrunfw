#!/bin/sh

tar cvzf modules.tar.gz -C linux-6.12.34 modules.builtin fs/zfs/{zfs,spl}.ko
