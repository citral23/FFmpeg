#!/bin/sh
export PATH=/opt/gcw0-toolchain/bin:/opt/gcw0-toolchain/usr/bin:/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/sysroot/usr/include:/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/bin:/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/sysroot/usr/bin:$PATH
export PKG_CONFIG_PATH=/opt/gcw0-toolchain/mipsel-gcw0-linux-uclibc/sysroot/usr/lib/pkgconfig

./configure --cc=mipsel-linux-gcc --disable-debug --disable-ffprobe --disable-ffmpeg --enable-cross-compile --arch=mipsel --target-os=linux --disable-doc --enable-gpl --enable-pic --disable-network --disable-indevs --disable-outdev=oss --disable-outdev=v4l2 --disable-postproc --enable-mipsfpu --disable-inline-asm --disable-mipsdsp --disable-mipsdspr2 --disable-msa

make -j12
