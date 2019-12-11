#!/bin/bash

mkdir build
cd build

set -v -x
env EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk"
sh ./compile.sh
mv output/bazel $PREFIX/bin
