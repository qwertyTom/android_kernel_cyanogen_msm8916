PATH=${PATH}:~/toolchain/bin/
KERNEL_DIR=$PWD
export ARCH=arm
make cyanogenmod_crackling_defconfig ARCH=arm CROSS_COMPILE=arm-eabi-
make zImage -j5 ARCH=arm CROSS_COMPILE=arm-eabi-
rm -rf /var/www/html/zImage
mv arch/arm/boot/zImage /var/www/html/
