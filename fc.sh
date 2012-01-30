make ARCH=arm htcleo_defconfig
make ARCH=arm CROSS_COMPILE=/media/sda3/arm-2010q1/bin/arm-none-linux-gnueabi- zImage -j6
make ARCH=arm CROSS_COMPILE=/media/sda3/arm-2010q1/bin/arm-none-linux-gnueabi- modules -j6
git log > ./currentrelease.txt
./compiledcopy

tar cvzf ../"ACAOmegaHTC35KernelNONSENSE`date +"%m%d%y%H%M"`".tar.gz ../compiled/
mv ../ACAOmegaHTC35Kernel* ../FikretKernels

