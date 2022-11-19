#!/usr/bin/env bash

VERSION="1.2.13"
DIRNAME="zlib-${VERSION}"
FILENAME="${DIRNAME}.tar.gz"
URL="https://zlib.net/fossils/${FILENAME}"
PREFIX="${HOME}/.local"

curl "${URL}" -o "${FILENAME}"
tar zxf "${FILENAME}"
cd "${DIRNAME}"
./configure --prefix="${PREFIX}"
make -j8
make install
