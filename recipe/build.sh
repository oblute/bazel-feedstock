#!/bin/bash

set -v -x
env EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk"
rm -rf /usr/local/Cellar/protobuf
sh ./compile.sh
mv output/bazel $PREFIX/bin
