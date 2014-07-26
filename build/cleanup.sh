#!/bin/bash
set -e
source /build/buildconfig
set -x

# Remove build essential
apt-get remove -y build-essential

apt-get clean
rm -rf /build
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
