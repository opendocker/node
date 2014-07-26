#!/bin/bash
set -e
source /build/buildconfig
set -x

# Remove build essential
apt-get purge -y build-essential
apt-get autoremove -y

apt-get clean
rm -rf /build
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
