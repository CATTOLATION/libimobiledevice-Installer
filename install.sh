#!/bin/bash

set -euo pipefail

directory="libplist"
directory2="libimobiledevice-glue"
directory3="libusbmuxd"
directory4="libimobiledevice"
directory5="usbmuxd"
directory6="libirecovery"
directory7="idevicerestore"
directory8="ideviceinstaller"
directory9="ifuse"

stage=1

echo "RUNNING SUDO"
sudo -v

echo "Stage 1 : RETRIEVING LIBPLIST FROM GIT"

if [ $stage -eq 1 ]; then
  echo "Stage 1 : INSTALLING PACKAGES"
  sudo apt update
  sudo apt install -y build-essential checkinstall git autoconf automake libtool-bin libssl-dev libusb-1.0-0-dev pkg-config cython3 libzip-dev libcurl4-openssl-dev libfuse-dev libreadline-dev
  ((stage = stage + 1))
fi

if [ $stage -eq 2 ]; then
  echo "Stage 2 : RETRIEVING LIBPLIST FROM GIT"
  if [ -d "$directory" ]; then
    echo "LIBPLIST DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory"
    git clone https://github.com/libimobiledevice/libplist "$directory"
    cd "$directory"
    ((stage = stage + 1))
  else
    echo "CLONING LIBPLIST REPOSITORY"
    git clone https://github.com/libimobiledevice/libplist "$directory"
    echo "HEADING INTO DIRECTORY"
    cd "$directory"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 3 ]; then
  echo "Stage 3 : INSTALLING LIBPLIST"
  echo "RUNNING ./autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 4 ]; then
  echo "Stage 4 : RETRIEVING LIBIMOBILEDEVICE-GLUE FROM GIT"
  if [ -d "$directory2" ]; then
    echo "LIBIMOBILEDEVICE DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory2"
    git clone https://github.com/libimobiledevice/libimobiledevice-glue "$directory2"
    cd "$directory2"
    ((stage = stage + 1))
  else
    echo "CLONING LIBIMOBILEDEVICE-GLUE REPOSITORY"
    git clone https://github.com/libimobiledevice/libimobiledevice-glue "$directory2"
    echo "HEADING INTO DIRECTORY"
    cd "$directory2"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 5 ]; then
  echo "Stage 5 : INSTALLING LIBIMOBILEDEVICE-GLUE"
  echo "RUNNING ./autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 6 ]; then
  echo "Stage 6 : RETRIEVING LIBUSBMUXD FROM GIT"
  if [ -d "$directory3" ]; then
    echo "LIBUSBMUXD DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory3"
    git clone https://github.com/libimobiledevice/libusbmuxd "$directory3"
    cd "$directory3"
    ((stage = stage + 1))
  else
    echo "CLONING LIBUSBMUXD REPOSITORY"
    git clone https://github.com/libimobiledevice/libusbmuxd "$directory3"
    echo "HEADING INTO DIRECTORY"
    cd "$directory3"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 7 ]; then
  echo "Stage 7 : INSTALLING LIBUSBMUXD"
  echo "RUNNING ./autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 8 ]; then
  echo "Stage 8 : RETRIEVING LIBIMOBILEDEVICE FROM GIT"
  if [ -d "$directory4" ]; then
    echo "LIBIMOBILEDEVICE DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory4"
    git clone https://github.com/libimobiledevice/libimobiledevice "$directory4"
    cd "$directory4"
    ((stage = stage + 1))
  else
    echo "CLONING LIBUSBMUXD REPOSITORY"
    git clone https://github.com/libimobiledevice/libimobiledevice "$directory4"
    echo "HEADING INTO DIRECTORY"
    cd "$directory4"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 9 ]; then
  echo "Stage 9 : INSTALLING LIBIMOBILEDEVICE"
  echo "RUNNING ./autogen.sh FILE"
  ./autogen.sh --enable-debug || true # Incase of error, Rerun autogen.sh
  PYTHON=/usr/bin/python3 ./autogen.sh --enable-debug
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 10 ]; then
  echo "Stage 10 : RETRIEVING USBMUXD FROM GIT"
  if [ -d "$directory5" ]; then
    echo "USBMUXD DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory5"
    git clone https://github.com/libimobiledevice/usbmuxd "$directory5"
    cd "$directory5"
    ((stage = stage + 1))
  else
    echo "CLONING USBMUXD REPOSITORY"
    git clone https://github.com/libimobiledevice/usbmuxd "$directory5"
    echo "HEADING INTO DIRECTORY"
    cd "$directory5"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 11 ]; then
  echo "Stage 11 : INSTALLING USBMUXD"
  echo "RUNNING ./autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 12 ]; then
  echo "Stage 12 : RETRIEVING LIBIRECOVERY FROM GIT"
  if [ -d "$directory6" ]; then
    echo "USBMUXD DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory6"
    git clone https://github.com/libimobiledevice/libirecovery "$directory6"
    cd "$directory6"
    ((stage = stage + 1))
  else
    echo "CLONING LIBIRECOVERY REPOSITORY"
    git clone https://github.com/libimobiledevice/libirecovery "$directory6"
    echo "HEADING INTO DIRECTORY"
    cd "$directory6"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 13 ]; then
  echo "Stage 13 : INSTALLING LIBIRECOVERY"
  echo "RUNNING ./autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 14 ]; then
  echo "Stage 14 : RETRIEVING IDEVICERESTORE FROM GIT"
  if [ -d "$directory7" ]; then
    echo "IDEVICERESTORE DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory7"
    git clone https://github.com/libimobiledevice/idevicerestore "$directory7"
    cd "$directory7"
    ((stage = stage + 1))
  else
    echo "CLONING IDEVICERESTORE REPOSITORY"
    git clone https://github.com/libimobiledevice/idevicerestore "$directory7"
    echo "HEADING INTO DIRECTORY"
    cd "$directory7"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 15 ]; then
  echo "Stage 15 : INSTALLING IDEVICERESTORE"
  echo "RUNNING ../autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 16 ]; then
  echo "Stage 16 : RETRIEVING IDEVICEINSTALLER FROM GIT"
  if [ -d "$directory8" ]; then
    echo "IDEVICEINSTALLER DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory8"
    git clone https://github.com/libimobiledevice/ideviceinstaller "$directory8"
    cd "$directory8"
    ((stage = stage + 1))
  else
    echo "CLONING IDEVICEINSTALLER REPOSITORY"
    git clone https://github.com/libimobiledevice/ideviceinstaller "$directory8"
    echo "HEADING INTO DIRECTORY"
    cd "$directory8"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 17 ]; then
  echo "Stage 17 : INSTALLING IDEVICEINSTALLER"
  echo "RUNNING ../autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 18 ]; then
  echo "Stage 18 : RETRIEVING IFUSE FROM GIT"
  if [ -d "$directory5" ]; then
    echo "IFUSE DIRECTORY ALREADY EXISTS, RECLONING"
    rm -rf "$directory9"
    git clone https://github.com/libimobiledevice/ifuse "$directory9"
    cd "$directory9"
    ((stage = stage + 1))
  else
    echo "CLONING IFUSE REPOSITORY"
    git clone https://github.com/libimobiledevice/ifuse "$directory9"
    echo "HEADING INTO DIRECTORY"
    cd "$directory9"
    ((stage = stage + 1))
  fi
fi

if [ $stage -eq 19 ]; then
  echo "Stage 19 : INSTALLING IFUSE"
  echo "RUNNING ../autogen.sh FILE"
  ./autogen.sh || true # Incase of error, Rerun autogen.sh
  ./autogen.sh
  echo "RUNNING MAKE FILE"
  make && sudo make install
  echo "HEADING BACK TO HOME DIRECTORY"
  cd ..
  ((stage = stage + 1))
fi

if [ $stage -eq 20 ]; then
  echo "Stage 20 : RUNNING LDCONFIG"
  sudo ldconfig
  echo "FINISHED"
fi
