#!/bin/bash
# This script builds the repo version of PyNE (with the MOAB optional 
# dependency) from scratch on Mint 18.01. The folder $HOME/opt is created 
# and PyNE is installed within.
#
# Run this script from any directory by issuing the command where <version>
# is either "dev" or "stable":
# $ ./mint_18.01.sh <version>
# After the build finishes run:
#  $ source ~/.bashrc
# or open a new terminal.

# Use package manager for as many packages as possible
apt_package_list="software-properties-common python-software-properties wget \
             build-essential git cmake vim emacs gfortran libblas-dev \
             liblapack-dev libhdf5-dev gfortran autoconf libtool \
             automake libpython-dev python-pip"

pip_package_list="numpy scipy cython nose tables matplotlib jinja2 \
                  setuptools"

hdf5_libdir=/usr/lib/x86_64-linux-gnu/hdf5/serial


source ubuntu_mint.sh $1
