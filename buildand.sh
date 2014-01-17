#!/bin/sh
NDK=/mnt/build/android-ndk-r9c
SYSROOT=$NDK/platforms/android-18/arch-arm/

export CFLAGS="-mthumb"
export LDFLAGS="-Wl,--fix-cortex-a8"
export CC="$NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/windows-x86_64/bin/arm-linux-androideabi-gcc --sysroot=$SYSROOT"

./configure \
--host=arm-linux-androideabi \
CC=arm-linux-androideabi-gcc \
LD=arm-linux-androideabi-ld
