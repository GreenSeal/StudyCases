#!/usr/bin/bash

#LLVM_SRC_DIR="/home/denist/code/llvm/llvm-project"
TEST_DIR="$LLVM_SRC_DIR/llvm/lib/Transforms/AddVars/tests_addvar"

cd $LLVM_SRC_DIR/build
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD=host -DLLVM_ENABLE_PROJECTS=clang -DLLVM_USE_LINKER=lld ../llvm/
make -j7
cd bin
for src_file in $(find $TEST_DIR -type f -name "*.c"); do
	echo "$src_file"
	./clang -emit-llvm -O1 -Xclang -disable-llvm-passes -S "$src_file" -o "${src_file%.*}.ll"
	./opt -load ../lib/LLVMAddVars.so -enable-new-pm=0 --addvars -S "${src_file%.*}.ll" -o "${src_file%.*}_mod.ll"
done


#./opt -enable-new-pm=0 --mem2reg -S hello.ll -o hello_mod.ll

#./opt -load ../lib/LLVMAddVars.so -enable-new-pm=0 --addvars2 -S "$TEST_DIR/ArrayAsArg.ll" -o "$TEST_DIR/ArrayAsArg_mod.ll"
#./llvm-dis hello_mod.bc -o hello_mod.ll
cd ../..
