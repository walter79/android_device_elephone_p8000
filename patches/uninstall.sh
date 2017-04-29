#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic build external/jpeg frameworks/av frameworks/base frameworks/native frameworks/opt/telephony frameworks/rs frameworks/opt/telephony hardware/libhardware system/core system/netd system/vold"

# red + nocolor
RED='\033[0;31m'
NC='\033[0m'

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "${RED}Cleaning ${NC}$dir ${RED}patches...${NC}\n"
	git reset --hard && git clean -df
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

