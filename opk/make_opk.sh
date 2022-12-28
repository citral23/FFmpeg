#!/bin/sh

cd $(dirname $0)

OPK_NAME="${1:-FFplay.opk}"

echo Building "${OPK_NAME}"...

# create opk
FLIST="../ffplay default.gcw0.desktop ffplay.png manual.txt"

rm -f "${OPK_NAME}"
mksquashfs ${FLIST} "${OPK_NAME}" -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
