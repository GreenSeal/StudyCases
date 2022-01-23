add_llvm_library(LLVMAddVars MODULE BUILDTREE_ONLY AddVars.cpp
        DEPENDS intrinsics_gen PLUGIN_TOOL opt)
