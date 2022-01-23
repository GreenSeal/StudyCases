; ModuleID = '/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/SimpleTest.c'
source_filename = "/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/SimpleTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local constant [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !3
  %3 = load i32, i32* %2, align 4, !tbaa !3
  %4 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 3), align 4, !tbaa !3
  %5 = add nsw i32 %3, %4
  store i32 %5, i32* %2, align 4, !tbaa !3
  %6 = load i32, i32* %2, align 4, !tbaa !3
  %7 = mul nsw i32 %6, 2
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !3
  %5 = load i32, i32* %3, align 4, !tbaa !3
  %6 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 0), align 16, !tbaa !3
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %3, align 4, !tbaa !3
  %8 = load i32, i32* %4, align 4, !tbaa !3
  %9 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 4), align 16, !tbaa !3
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %4, align 4, !tbaa !3
  %11 = load i32, i32* %3, align 4, !tbaa !3
  %12 = load i32, i32* %4, align 4, !tbaa !3
  %13 = call i32 @foo(i32 %12)
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %11, %14
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fez(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i32 %1, i32* %5, align 4, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !3
  %7 = load i32, i32* %4, align 4, !tbaa !3
  %8 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 5), align 4, !tbaa !3
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %4, align 4, !tbaa !3
  %10 = load i32, i32* %5, align 4, !tbaa !3
  %11 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 6), align 8, !tbaa !3
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %5, align 4, !tbaa !3
  %13 = load i32, i32* %6, align 4, !tbaa !3
  %14 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @d, i64 0, i64 1), align 4, !tbaa !3
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %6, align 4, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = load i32, i32* %4, align 4, !tbaa !3
  %18 = load i32, i32* %5, align 4, !tbaa !3
  %19 = call i32 @bar(i32 %17, i32 %18)
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %16, %20
  %22 = load i32, i32* %6, align 4, !tbaa !3
  %23 = mul nsw i32 %22, 3
  %24 = add nsw i32 %21, %23
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !3
  store i8** %1, i8*** %5, align 8, !tbaa !7
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 123, i32* %6, align 4, !tbaa !3
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #2
  store i32 0, i32* %7, align 4, !tbaa !3
  %10 = load i32, i32* %6, align 4, !tbaa !3
  %11 = call i32 @foo(i32 %10)
  %12 = load i32, i32* %7, align 4, !tbaa !3
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %7, align 4, !tbaa !3
  %14 = load i32, i32* %6, align 4, !tbaa !3
  %15 = load i32, i32* %7, align 4, !tbaa !3
  %16 = call i32 @bar(i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4, !tbaa !3
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %7, align 4, !tbaa !3
  %19 = load i32, i32* %6, align 4, !tbaa !3
  %20 = load i32, i32* %7, align 4, !tbaa !3
  %21 = call i32 @fez(i32 %19, i32 %20, i32 123)
  %22 = load i32, i32* %7, align 4, !tbaa !3
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %7, align 4, !tbaa !3
  %24 = load i32, i32* %7, align 4, !tbaa !3
  %25 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #2
  %26 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #2
  ret i32 %24
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

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
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
