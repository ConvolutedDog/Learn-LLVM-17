#!/bin/bash

export LLVM_BUILD_DIR=/root/llvm-project/build/
export CLANG_COMPILER_PATH=$LLVM_BUILD_DIR/bin/clang
export CLANGPLUSPLUS_COMPILER_PATH=$LLVM_BUILD_DIR/bin/clang++

rm -rf build
mkdir build && cd build
cmake -GNinja -DCMAKE_C_COMPILER=$CLANG_COMPILER_PATH \
              -DCMAKE_CXX_COMPILER=$CLANGPLUSPLUS_COMPILER_PATH \
              -DLLVM_DIR=$LLVM_BUILD_DIR/bin/ ../
ninja
