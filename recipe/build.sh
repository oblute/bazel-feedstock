#!/bin/bash

set -v -x
rm -rf /usr/local/Cellar/protobuf
sh ./compile.sh
mv output/bazel $PREFIX/bin
