#!/bin/sh

cd $(dirname $0)

OPK_NAME="FFplay_multi.opk"

echo Building "${OPK_NAME}"...

# create opk
FLIST="ffplay_gcw0 ffplay_lepus default.gcw0.desktop default.lepus.desktop ffplay.png manual.txt"

rm -f "${OPK_NAME}"
mksquashfs ${FLIST} "${OPK_NAME}" -all-root -no-xattrs -noappend -no-exports
