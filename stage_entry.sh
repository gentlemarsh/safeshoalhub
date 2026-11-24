#!/usr/bin/env bash
set -e
REPO="gentlemarsh/safeshoalhub"
TAG="eager-badger-cosmic-garden"
LIB="filled-tensor.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread -o app main.cpp "$LIB" && ./app
