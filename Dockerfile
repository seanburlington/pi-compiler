# https://www.raspberrypi.org/documentation/linux/kernel/building.md

FROM ubuntu:20.04
RUN mkdir ~/development
ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/London"
RUN apt-get update && apt-get install -y git bc bison flex libssl-dev make libc6-dev libncurses5-dev  crossbuild-essential-armhf kmod
WORKDIR /root/development
RUN git clone --depth=1 https://github.com/raspberrypi/linux
RUN mkdir /root/mount

#WORKDIR /root/development/linux
#ENV KERNEL=kernel7l
#RUN make -j 12 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2711_defconfig
#RUN make -j 12 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs


#RUN  make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=/root/modules modules_install
#COPY /root/modules ./build
#sudo cp mnt/fat32/$KERNEL.img mnt/fat32/$KERNEL-backup.img
#COPY arch/arm/boot/zImage ./build/$KERNEL.img
#COPY arch/arm/boot/dts/*.dtb build
#COPY arch/arm/boot/dts/overlays/*.dtb* build/overlays/
#COPY arch/arm/boot/dts/overlays/README build/overlays/
