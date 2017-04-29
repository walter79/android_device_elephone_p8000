#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic build external/jpeg frameworks/av frameworks/base frameworks/native frameworks/rs hardware/libhardware system/netd system/vold"

VENDOR=elephone
DEVICE=p8000
# red + nocolor
RED='\033[0;31m'
NC='\033[0m'

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	#git am $rootdirectory/device/$VENDOR/$DEVICE/patches/$dir/*.patch
	git apply -v $rootdirectory/device/$VENDOR/$DEVICE/patches/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

