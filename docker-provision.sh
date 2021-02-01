#!/bin/sh -eux

# General packages needed to build Node modules. This list is based on the list
# in https://github.com/docker-library/buildpack-deps/blob/master/jessie/Dockerfile
BUILD_PKGS="autoconf automake bzip2 file g++ gcc git imagemagick libbz2-dev libc6-dev libcurl4-openssl-dev libevent-dev libffi-dev libgeoip-dev libglib2.0-dev libjpeg-dev liblzma-dev libmagickcore-dev libmagickwand-dev libmysqlclient-dev libncurses-dev libpng-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libtool libwebp-dev libxml2-dev libxslt-dev libyaml-dev make patch xz-utils zlib1g-dev"

# update Apt repositories
apt-get update

# install build packages
apt-get install -y --no-install-recommends $BUILD_PKGS


# install apib2swagger
npm install -g apib2swagger@1.12.0

# remove installation dependencies
apt-get -y purge $BUILD_PKGS
apt-get -y clean
apt-get -y autoremove
rm -rf /var/lib/apt/lists/* /root/.npm /tmp/npm*

# Add empty docs directory
mkdir -p /docs
