echo "###_root access check";
touch /root/.accesstest;
if [ ! -e /root/.accesstest ]; then echo "###_you must be logged in as root to continue"; exit; fi;

make ARCH=arm htcleo_defconfig
make ARCH=arm CROSS_COMPILE=/root/CodeSourcery/Sourcery_G++_Lite_OLDTOOLCHAIN/bin/arm-none-linux-gnueabi- zImage -j6
make ARCH=arm CROSS_COMPILE=/root/CodeSourcery/Sourcery_G++_Lite_OLDTOOLCHAIN/bin/arm-none-linux-gnueabi- modules -j6
git log > ./currentrelease.txt
./compiledcopy

tar cvzf ../"ACAOmegaHTC35KernelNONSENSE`date +"%m%d%y%H%M"`".tar.gz ../compiled/

if [ ! -e ../ACAKernels/ ]; then mkdir ../ACAKernels ]; fi;
mv ../ACAOmegaHTC35Kernel* ../ACAKernels

