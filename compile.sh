#!/bin/bash 

cd /root/development/linux
export KERNEL=kernel7l
make -j 12 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2711_defconfig
make -j 12 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=/root/modules modules_install

#sudo cp mnt/fat32/$KERNEL.img mnt/fat32/$KERNEL-backup.img
#COPY arch/arm/boot/zImage ./build/$KERNEL.img
#COPY arch/arm/boot/dts/*.dtb build
#COPY arch/arm/boot/dts/overlays/*.dtb* build/overlays/
#COPY arch/arm/boot/dts/overlays/README build/overlays/
