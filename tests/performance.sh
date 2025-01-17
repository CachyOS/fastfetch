#!/bin/env sh
rm -rf tests/build/
mkdir -p tests/build/
cd tests/build/
cmake ../.. -DBUILD_TESTS=ON
cmake --build . -j$(nproc) --target fastfetch-test-performance
./fastfetch-test-performance "$@"
