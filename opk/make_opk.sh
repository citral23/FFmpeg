#!/bin/sh

cd $(dirname $0)

OPK_NAME="${1:-FFplay.opk}"

echo Building "${OPK_NAME}"...

# create opk
FLIST="../ffplay default.lepus.desktop ffplay.png manual.txt"

rm -f "${OPK_NAME}"
mksquashfs ${FLIST} "${OPK_NAME}" -all-root -no-xattrs -noappend -no-exports

cat default.lepus.desktop
