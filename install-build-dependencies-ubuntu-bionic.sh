#!/bin/bash
#
# Install Kodi build dependencies for Debian unstable (October 2018).
#

# Install build tools
apt -y install \
    build-essential debhelper \
    autoconf automake autopoint gettext autotools-dev cmake curl \
    default-jre doxygen gawk gdc gperf libtool \
    lsb-release swig unzip yasm zip ccache

# Python stuff
apt -y install python-dev python-pil

# Install build libraries (alphabetical order0
apt -y install \
    libasound2-dev \
    libass-dev \
    libavahi-client-dev \
    libavahi-common-dev \
    libbluetooth-dev \
    libbluray-dev \
    libbz2-dev \
    libcap-dev \
    libcdio-dev \
    libcec-dev \
    libcrossguid-dev \
    libcurl4-openssl-dev \
    libcwiid-dev \
    libdbus-1-dev \
    libegl1-mesa-dev \
    libenca-dev \
    libflac-dev \
    libfontconfig-dev \
    libfreetype6-dev \
    libfribidi-dev \
    libfstrcmp-dev \
    libfmt-dev \
    libinput-dev \
    libgcrypt-dev \
    libgif-dev \
    libgles2-mesa-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libgnutls28-dev \
    libgpg-error-dev \
    libgtest-dev \
    libiso9660-dev \
    libjpeg-dev \
    liblcms2-dev \
    liblirc-dev \
    libltdl-dev \
    liblzo2-dev \
    libmicrohttpd-dev \
    default-libmysqlclient-dev \
    libnfs-dev \
    libogg-dev \
    libpcre3-dev \
    libplist-dev \
    libpng-dev \
    libpulse-dev \
    libp8-platform-dev \
    libsmbclient-dev \
    libsqlite3-dev \
    libssl-dev \
    libtag1-dev \
    libtiff5-dev \
    libtinyxml-dev \
    libudev-dev \
    libunistring-dev \
    libva-dev \
    libvdpau-dev \
    libvorbis-dev \
    libxmu-dev \
    libxrandr-dev \
    libxslt1-dev \
    libxt-dev \
    rapidjson-dev \
    uuid-dev \
    zlib1g-dev

#Build, Make, and isntall latest version of FMT Library
git clone --recursive https://github.com/fmtlib/fmt.git
cd fmt
git checkout 6.2.1
mkdir build
cd build
cmake ..
make -j$(nproc)
make install
cd ../../
rm -rf fmt

#Build, Make, and isntall latest version of spdlog Library
git clone --recursive https://github.com/gabime/spdlog.git
cd spdlog
git checkout v1.8.2
mkdir build
cd build
cmake ..
make -j$(nproc)
make install
cd ../../
rm -rf spdlog
