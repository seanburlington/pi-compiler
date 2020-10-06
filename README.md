# pi-compiler
Docker setup to cross compile code for the raspberry pi

I started this in error - and found the code I wanted was apt-gettable

But having started I figured I may as well commit something that actually works 

Well - it compiles a kernel - I have never tried using the kernel 

How to compile taken from https://www.raspberrypi.org/documentation/linux/kernel/building.md


```docker run -it   --mount type=bind,source="$(pwd)",target=/root/mount picompiler  /root/mount/compile.sh```
