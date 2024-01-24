#!/bin/bash

set -e
set -x

#
# Checkout the grapesy repo inside the container
#

mkdir -p /var/local/git
git clone /var/local/jenkins/grpc/grapesy /var/local/git/grapesy

#
# Build
#
# We are using a docker container that has all grapesy dependencies built.
#

cd /var/local/git/grapesy
cabal install exe:grapesy-interop -w /opt/ghc/9.2.8/bin/ghc
