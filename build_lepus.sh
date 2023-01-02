#!/bin/sh
export PATH=/opt/lepus-toolchain/bin:/opt/lepus-toolchain/usr/bin:/opt/lepus-toolchain/mipsel-lepus-linux-musl/sysroot/usr/include:/opt/lepus-toolchain/mipsel-lepus-linux-musl/bin:/opt/lepus-toolchain/mipsel-lepus-linux-musl/sysroot/usr/bin:$PATH
export PKG_CONFIG_PATH=/opt/lepus-toolchain/mipsel-lepus-linux-musl/sysroot/usr/lib/pkgconfig

./configure --cc=mipsel-linux-gcc --disable-debug --disable-ffprobe --disable-ffmpeg --enable-cross-compile --arch=mipsel --target-os=linux --disable-doc --enable-gpl --enable-pic --disable-network --disable-indevs --disable-outdev=oss --disable-outdev=v4l2 --disable-postproc --disable-inline-asm --disable-mipsdspr1 --disable-mipsdspr2 --disable-msa --disable-mipsfpu

make -j16
