#!/bin/sh

cp ./sw-description ./output/images

IMG_FILES="sw-description rootfs.ext4.gz"

cd ./output/images
for f in ${IMG_FILES} ; do
	echo ${f}
done | cpio -ovL -H crc > buildroot.swu
