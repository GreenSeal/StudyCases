### Add Variables pass
This pass implements simple optimisation: it checks for compile-time accessings in LLVM IR and insert variables, which contains 1 if cash miss is likely to happen, and 0 otherwise
### Steps to launch 
I have already uploaded results in the tests_addvar, so you if you want to check output from the pass, you can just see at *_mod.ll files

First, you need to build llvm on your machine by the following command sequence
````
git clone https://github.com/llvm/llvm-project.git
cd llvm-project/build
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD=host -DLLVM_ENABLE_PROJECTS=clang -DLLVM_USE_LINKER=lld ../llvm/
make -j
````
Building may take a long time, for my machine it was like 1-2 hours.
Once you install llvm, you need to specify source directory for llvm, for me it was like
````
export LLVM_SRC_DIR=/home/denist/code/llvm/llvm-project
````
Then, you need to go to the $LLVM_SRC_DIR/llvm/lib/Transform and add the following line to the CMakeLists.txt
````
add_subdirectory(AddVars)
````
Copy all repository content to the newly created directory $LLVM_SRC_DIR/llvm/lib/Transform/AddVars.
Now you are ready to launch Add Variables Pass. Run
````
./launch_addvar.sh
````
In $LLVM_SRC_DIR/llvm/lib/Transform/AddVars/tests_addvar you'll see the results of the pass under the *_mod.ll files
