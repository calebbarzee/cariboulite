#! /bin/bash

## --------------------------------------------------------------------
## Variables
## --------------------------------------------------------------------
ROOT_DIR=`pwd`
SOAPY_UTILS_EXE=SoapySDRUtil
RED='\033[0;31m'
GREEN='\033[1;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color
ERROR="0"

## --------------------------------------------------------------------
## kernel module dev dependencies
## --------------------------------------------------------------------
printf "\n[  2  ] ${GREEN}Updating system and installing dependencies...${NC}\n"
# added Pkg lock and timeout for CI
sudo apt-get -o DPkg::Lock::Timeout=60 update
sudo apt-get -o DPkg::Lock::Timeout=60 -y install raspberrypi-kernel-headers # raspbian
sudo apt-get -o DPkg::Lock::Timeout=60 -y install linux-headers-raspi # ubuntu
sudo apt-get -o DPkg::Lock::Timeout=60 -y install module-assistant pkg-config libncurses5-dev cmake git libzmq3-dev
sudo apt-get -o DPkg::Lock::Timeout=60 -y install swig avahi-daemon libavahi-client-dev python3-distutils libpython3-dev

# sudo depmod -a

## --------------------------------------------------------------------
## clone SoapySDR dependencies
## --------------------------------------------------------------------
printf "\n[  3  ] ${GREEN}Checking Soapy SDR installation ($SOAPY_UTILS_EXE)...${NC}\n"

SOAPY_UTIL_PATH=`which $SOAPY_UTILS_EXE`

if test -f "${SOAPY_UTIL_PATH}"; then
    printf "${CYAN}Found SoapySDRUtil at ${SOAPY_UTIL_PATH}${NC}\n"
else
    printf "${RED}Did not find SoapySDRUtil. Exiting...${NC}\n\n"
    exit 1
fi

## --------------------------------------------------------------------
## Main Software
## --------------------------------------------------------------------
printf "\n[  5  ] ${GREEN}Compiling main source...${NC}\n"
printf "${CYAN}1. External Tools...${NC}\n"
cd $ROOT_DIR/software/utils
mkdir -p build && cd build
cmake ../
make
mv $ROOT_DIR/software/utils/build/generate_bin_blob $ROOT_DIR/software/utils/generate_bin_blob

printf "${CYAN}2. libIIR ${NC}\n"
cd $ROOT_DIR/software/libcariboulite/src/iir/
mkdir -p build && cd build
cmake ../
make
sudo make install
sudo ldconfig

# TODO:  double check no fail: kernel module install
printf "${CYAN}3. SMI kernel module & udev...${NC}\n"
cd $ROOT_DIR/driver
kernel_memory=$(grep "MemAvailable:" /proc/meminfo | awk '{print $2}')
kernel_memory_mb=$((kernel_memory / 1024))
printf "${CYAN}   Detected memory ${kernel_memory_mb} MB...${NC}\n"
if (( kernel_memory_mb > 512 )); then
  printf "${CYAN}   Installing with Fifo size multiplier of 6xMTU...${NC}\n"
  ./install.sh install 6 2 3
else
  printf "${CYAN}   Installing with Fifo size multiplier of 2xMTU...${NC}\n"
  ./install.sh install 2 2 3
fi
cd ..

printf "${CYAN}4. Main software...${NC}\n"
cd $ROOT_DIR
mkdir -p build && cd build
cmake $ROOT_DIR/software/libcariboulite/
make
sudo make install
sudo ldconfig

# TODO: double check no fail: pulled out all reading of config from OS
