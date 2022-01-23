; ModuleID = '/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/ManyArrays.ll'
source_filename = "/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/ManyArrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [15 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@e = dso_local global [15 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30], align 16
@f = dso_local global [15 x i32] [i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45], align 16
@g = dso_local global [15 x i32] [i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %prob = add i64 0, 1
  %7 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 1), align 4, !tbaa !3
  %prob1 = add i64 0, 0
  %8 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 5), align 4, !tbaa !3
  %9 = add nsw i32 %7, %8
  %prob2 = add i64 0, 1
  %10 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 14), align 8, !tbaa !3
  %11 = add nsw i32 %9, %10
  %prob3 = add i64 0, 1
  %12 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 14), align 8, !tbaa !3
  %13 = add nsw i32 %11, %12
  %prob4 = add i64 0, 1
  %14 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 2), align 8, !tbaa !3
  %15 = add nsw i32 %13, %14
  %prob5 = add i64 0, 1
  %16 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 12), align 16, !tbaa !3
  %17 = add nsw i32 %15, %16
  %prob6 = add i64 0, 1
  %18 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 0), align 16, !tbaa !3
  %19 = add nsw i32 %17, %18
  %prob7 = add i64 0, 0
  %20 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 2), align 8, !tbaa !3
  %21 = add nsw i32 %19, %20
  %prob8 = add i64 0, 0
  %22 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 4), align 16, !tbaa !3
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %1, align 4, !tbaa !3
  %prob9 = add i64 0, 1
  %24 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 9), align 4, !tbaa !3
  %prob10 = add i64 0, 1
  %25 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 5), align 4, !tbaa !3
  %26 = add nsw i32 %24, %25
  %prob11 = add i64 0, 1
  %27 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 4), align 16, !tbaa !3
  %28 = add nsw i32 %26, %27
  %prob12 = add i64 0, 0
  %29 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 7), align 4, !tbaa !3
  %30 = add nsw i32 %28, %29
  %prob13 = add i64 0, 0
  %31 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 8), align 16, !tbaa !3
  %32 = add nsw i32 %30, %31
  %prob14 = add i64 0, 1
  %33 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 3), align 4, !tbaa !3
  %34 = add nsw i32 %32, %33
  %prob15 = add i64 0, 1
  %35 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 7), align 4, !tbaa !3
  %36 = add nsw i32 %34, %35
  %prob16 = add i64 0, 0
  %37 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 13), align 4, !tbaa !3
  %38 = add nsw i32 %36, %37
  %prob17 = add i64 0, 1
  %39 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 1), align 4, !tbaa !3
  %40 = add nsw i32 %38, %39
  %prob18 = add i64 0, 0
  %41 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 4), align 16, !tbaa !3
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %2, align 4, !tbaa !3
  %prob19 = add i64 0, 1
  %43 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 6), align 8, !tbaa !3
  %prob20 = add i64 0, 0
  %44 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 10), align 8, !tbaa !3
  %45 = add nsw i32 %43, %44
  %prob21 = add i64 0, 0
  %46 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 11), align 4, !tbaa !3
  %47 = add nsw i32 %45, %46
  %prob22 = add i64 0, 1
  %48 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 8), align 16, !tbaa !3
  %49 = add nsw i32 %47, %48
  %prob23 = add i64 0, 0
  %50 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 9), align 4, !tbaa !3
  %51 = add nsw i32 %49, %50
  %prob24 = add i64 0, 0
  %52 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 13), align 4, !tbaa !3
  %53 = add nsw i32 %51, %52
  %prob25 = add i64 0, 1
  %54 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 14), align 8, !tbaa !3
  %55 = add nsw i32 %53, %54
  %prob26 = add i64 0, 1
  %56 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @f, i64 0, i64 10), align 8, !tbaa !3
  %57 = add nsw i32 %55, %56
  %prob27 = add i64 0, 1
  %58 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 7), align 4, !tbaa !3
  %59 = add nsw i32 %57, %58
  %prob28 = add i64 0, 0
  %60 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @g, i64 0, i64 8), align 16, !tbaa !3
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %3, align 4, !tbaa !3
  %62 = load i32, i32* %3, align 4, !tbaa !3
  %63 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #2
  %64 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #2
  %65 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #2
  ret i32 %62
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #2
  %4 = call i32 @foo()
  store i32 %4, i32* %2, align 4, !tbaa !3
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #2
  ret i32 0
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git fc043d8a256b1e431aa1297dffba154a7dd46b25)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
