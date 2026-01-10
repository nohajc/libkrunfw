#!/bin/bash

cd linux-6.12.62
make O=../linux-16k -j9
make O=../linux-4k -j9
