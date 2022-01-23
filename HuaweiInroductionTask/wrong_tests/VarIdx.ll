; ModuleID = '/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/wrong_tests/VarIdx.c'
source_filename = "/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/wrong_tests/VarIdx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [30 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  store i32 0, i32* %1, align 4, !tbaa !3
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  store i32 0, i32* %2, align 4, !tbaa !3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #2
  store i32 0, i32* %3, align 4, !tbaa !3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #2
  store i32 0, i32* %4, align 4, !tbaa !3
  br label %9

9:                                                ; preds = %50, %0
  %10 = load i32, i32* %4, align 4, !tbaa !3
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #2
  br label %53

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4, !tbaa !3
  %16 = load i32, i32* %4, align 4, !tbaa !3
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* %4, align 4, !tbaa !3
  %19 = mul nsw i32 40, %18
  %20 = add nsw i32 %17, %19
  %21 = add nsw i32 %20, 41
  %22 = srem i32 %21, 30
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [30 x i32], [30 x i32]* @d, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !3
  %26 = load i32, i32* %1, align 4, !tbaa !3
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %1, align 4, !tbaa !3
  %28 = load i32, i32* %4, align 4, !tbaa !3
  %29 = load i32, i32* %4, align 4, !tbaa !3
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %4, align 4, !tbaa !3
  %32 = mul nsw i32 5, %31
  %33 = add nsw i32 %30, %32
  %34 = add nsw i32 %33, 4
  %35 = srem i32 %34, 30
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [30 x i32], [30 x i32]* @d, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !3
  store i32 %38, i32* %2, align 4, !tbaa !3
  %39 = load i32, i32* %4, align 4, !tbaa !3
  %40 = mul nsw i32 2, %39
  %41 = load i32, i32* %4, align 4, !tbaa !3
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %4, align 4, !tbaa !3
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, 3
  %46 = srem i32 %45, 30
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [30 x i32], [30 x i32]* @d, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !3
  store i32 %49, i32* %3, align 4, !tbaa !3
  br label %50

50:                                               ; preds = %14
  %51 = load i32, i32* %4, align 4, !tbaa !3
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4, !tbaa !3
  br label %9, !llvm.loop !7

53:                                               ; preds = %12
  %54 = load i32, i32* %1, align 4, !tbaa !3
  %55 = load i32, i32* %2, align 4, !tbaa !3
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %3, align 4, !tbaa !3
  %58 = add nsw i32 %56, %57
  %59 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #2
  %60 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #2
  %61 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #2
  ret i32 %58
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
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
