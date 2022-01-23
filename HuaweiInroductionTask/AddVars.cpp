#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/NoFolder.h>
using namespace llvm;

namespace {
  // Hello2 - The second implementation with getAnalysisUsage implemented.
  struct AddVar : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    AddVar() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {

      errs() << "=================================\n";

      APInt CashLen(64, 10);
      APInt PrevIdx(64, 0);
      const std::string VarName = "prob";
      StringRef PredArr;

      //That's not good(mb)
      for(inst_iterator Inst = inst_begin(F), E = inst_end(F); Inst != E; ++Inst) {

        if(auto* Load = dyn_cast<LoadInst>(&*Inst)) {

          if(auto *GEP = dyn_cast<GEPOperator>(Load->getPointerOperand())) {

            if(GEP->getNumOperands() != 3) {
              errs() << "GEP has less operands than expected\n";
              std::abort();
            }

            auto ArrName = GEP->getOperand(0)->getName();


            if(auto *IdxOp = dyn_cast<ConstantInt>(GEP->getOperand(2))) {

              APInt Idx = IdxOp->getValue();
              IRBuilder<NoFolder> Builder(&*Inst);

              // errs() << "Inst: " << Inst->getName() << "\n";

              // auto * Var = Builder.CreateAlloca(Builder.getInt32Ty(),
              // nullptr, "var");
              auto *Val0 = ConstantInt::get(Builder.getInt64Ty(), 0);
              auto *Val1 = ConstantInt::get(Builder.getInt64Ty(), 1);

              if(!PredArr.empty()) {
                errs() << "PrevIdx: " << PrevIdx << " Idx: " << Idx;
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen)) {
                errs() << "Cash nepopapdanie\n";
                PrevIdx = Idx;
                PredArr = GEP->getOperand(0)->getName();
                Builder.CreateAdd(Val0, Val1, VarName);
              } else {
                errs() << " Cash popadanie\n";
                Builder.CreateAdd(Val0, Val0, VarName);
              }
            } else {
              errs() << "This case doesn't support\n";
              std::abort();
            }
          }
        }
      }
      errs() << "===================================\n";
      return true;
    }
  };
}

char AddVar::ID = 0;
static RegisterPass<AddVar>
Y("addvars", "Add Vars Pass");
