#!/bin/bash
set -e
source /build/buildconfig
set -x

# Upgrade everything
apt-get update
apt-get dist-upgrade -y --no-install-recommends

# Make node build dir
mkdir /build/node
cd /build/node

# Build essential for addons and to compile node
$minimal_apt_get_install build-essential

# Download node
curl -s \
  "http://nodejs.org/dist/v${node_version}/node-v${node_version}.tar.gz" \
  > node.tar.gz
tar -xzf node.tar.gz
cd node-v${node_version}

# Build node
./configure
make install
