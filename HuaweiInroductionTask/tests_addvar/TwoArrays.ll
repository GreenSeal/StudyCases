; ModuleID = '/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/TwoArrays.c'
source_filename = "/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/TwoArrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [15 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@e = dso_local global [15 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30], align 16

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
  %7 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 1), align 4, !tbaa !3
  %8 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 5), align 4, !tbaa !3
  %9 = add nsw i32 %7, %8
  %10 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 14), align 8, !tbaa !3
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 14), align 8, !tbaa !3
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 2), align 8, !tbaa !3
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 12), align 16, !tbaa !3
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %1, align 4, !tbaa !3
  %18 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 9), align 4, !tbaa !3
  %19 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 5), align 4, !tbaa !3
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 4), align 16, !tbaa !3
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 7), align 4, !tbaa !3
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 8), align 16, !tbaa !3
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 3), align 4, !tbaa !3
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %2, align 4, !tbaa !3
  %29 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 6), align 8, !tbaa !3
  %30 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 10), align 8, !tbaa !3
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @e, i64 0, i64 11), align 4, !tbaa !3
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 8), align 16, !tbaa !3
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 9), align 4, !tbaa !3
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @d, i64 0, i64 13), align 4, !tbaa !3
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %3, align 4, !tbaa !3
  %40 = load i32, i32* %3, align 4, !tbaa !3
  %41 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #2
  %42 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #2
  %43 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #2
  ret i32 %40
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
