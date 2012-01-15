make ARCH=arm htcleo_defconfig
make CONFIG_DEBUG_SECTION_MISMATCH=y ARCH=arm CROSS_COMPILE=~/arm-2010q1/bin/arm-none-linux-gnueabi- zImage -j4
make ARCH=arm CROSS_COMPILE=~/arm-2010q1/bin/arm-none-linux-gnueabi- modules -j4
git log > ./currentrelease.txt
./compiledcopy

tar cvzf ../"ACAOmegaHTC35KernelNONSENSE`date +"%m%d%y%H%M"`".tar.gz ../compiled/
mv ../ACAOmegaHTC35Kernel* ../FikretKernels

