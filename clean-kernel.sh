cp .config .config.bkp
make ARCH=arm CROSS_COMPILE=/media/sda3/arm-2010q1/bin/arm-none-linux-gnueabi- mrproper
cp .config.bkp .config

