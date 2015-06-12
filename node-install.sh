#!/usr/bin/env bash

# Created by: Ivan Garavito <ivangaravito@gmail.com>
# License: MIT

# Usage function
function usage {
  echo "Usage: $0 <destiny> <binary-package>"
  echo
  echo "destiny         where to install Node.js. Can be one of:"
  echo "                  * USR    install it to /usr"
  echo "                  * LOCAL  install it to /usr/local"
  echo "binary-package  /path/to/node-<version>-<platform>-<arch>.tar.gz"
  echo
}

# File not exists function
function file_not_exists {
  local f=$1
  [[ -f "$f" ]] && return 1 || return 0
}


# Checks command line arguments
if [ -z "$2" ]; then
  usage
  exit 1
fi

INSTALL_PATH=""
NODE_PACKAGE=$2

# Checks destiny options
if [ "$1" = "USR" ]; then
  INSTALL_PATH="/usr"
elif [ "$1" = "LOCAL" ]; then
  INSTALL_PATH="/usr/local"
else
  echo "ERROR: No valid destiny!"
  usage
  exit 2
fi

# If node package doesn't exist, then exit
if ( file_not_exists $NODE_PACKAGE ); then
  echo "ERROR: File '$NODE_PACKAGE' not exists!"
  usage
  exit 3
fi

# Get package's absolut path
PACKAGE_FILE=$(dirname $NODE_PACKAGE)
if [ "$PACKAGE_FILE" = "." ]; then
  PACKAGE_FILE=$(pwd)
else
  PACKAGE_FILE=$(cd $PACKAGE_FILE && pwd)
fi
PACKAGE_FILE="$PACKAGE_FILE/$(basename $NODE_PACKAGE)"

cd $INSTALL_PATH && tar --strip-components 1 -xzf $PACKAGE_FILE
