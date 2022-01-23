; ModuleID = '/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/wrong_tests/ArrayAsArg.c'
source_filename = "/home/denist/code/llvm/llvm-project/llvm/lib/Transforms/AddVars/tests_addvar/wrong_tests/ArrayAsArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [17 x i32] [i32 4, i32 15, i32 14, i32 75, i32 2, i32 11, i32 13, i32 1, i32 6, i32 3, i32 5, i32 53, i32 67, i32 22, i32 79, i32 7, i32 33], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8, !tbaa !3
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3
  %7 = load i32*, i32** %2, align 8, !tbaa !3
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4, !tbaa !7
  store i32 %9, i32* %3, align 4, !tbaa !7
  %10 = load i32, i32* %3, align 4, !tbaa !7
  %11 = load i32*, i32** %2, align 8, !tbaa !3
  %12 = getelementptr inbounds i32, i32* %11, i64 5
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %3, align 4, !tbaa !7
  %15 = load i32, i32* %3, align 4, !tbaa !7
  %16 = load i32*, i32** %2, align 8, !tbaa !3
  %17 = getelementptr inbounds i32, i32* %16, i64 10
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %3, align 4, !tbaa !7
  %20 = load i32, i32* %3, align 4, !tbaa !7
  %21 = load i32*, i32** %2, align 8, !tbaa !3
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %3, align 4, !tbaa !7
  %25 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3
  %26 = load i32*, i32** %2, align 8, !tbaa !3
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4, !tbaa !7
  store i32 %28, i32* %4, align 4, !tbaa !7
  %29 = load i32*, i32** %2, align 8, !tbaa !3
  %30 = getelementptr inbounds i32, i32* %29, i64 13
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = load i32, i32* %4, align 4, !tbaa !7
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %4, align 4, !tbaa !7
  %34 = load i32*, i32** %2, align 8, !tbaa !3
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = load i32, i32* %4, align 4, !tbaa !7
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %4, align 4, !tbaa !7
  %39 = load i32*, i32** %2, align 8, !tbaa !3
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4, !tbaa !7
  %42 = load i32, i32* %4, align 4, !tbaa !7
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %4, align 4, !tbaa !7
  %44 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #3
  %45 = load i32*, i32** %2, align 8, !tbaa !3
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  %47 = load i32, i32* %46, align 4, !tbaa !7
  store i32 %47, i32* %5, align 4, !tbaa !7
  %48 = load i32*, i32** %2, align 8, !tbaa !3
  %49 = getelementptr inbounds i32, i32* %48, i64 14
  %50 = load i32, i32* %49, align 4, !tbaa !7
  %51 = load i32, i32* %5, align 4, !tbaa !7
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %5, align 4, !tbaa !7
  %53 = load i32*, i32** %2, align 8, !tbaa !3
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = load i32, i32* %54, align 4, !tbaa !7
  %56 = load i32, i32* %5, align 4, !tbaa !7
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4, !tbaa !7
  %58 = load i32*, i32** %2, align 8, !tbaa !3
  %59 = getelementptr inbounds i32, i32* %58, i64 11
  %60 = load i32, i32* %59, align 4, !tbaa !7
  %61 = load i32, i32* %5, align 4, !tbaa !7
  %62 = mul nsw i32 %61, %60
  store i32 %62, i32* %5, align 4, !tbaa !7
  %63 = load i32, i32* %3, align 4, !tbaa !7
  %64 = load i32, i32* %4, align 4, !tbaa !7
  %65 = load i32, i32* %5, align 4, !tbaa !7
  %66 = mul nsw i32 %64, %65
  %67 = sub nsw i32 %63, %66
  %68 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #3
  %69 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3
  %70 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #3
  ret i32 %67
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [17 x i32], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [17 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 68, i8* %3) #3
  %4 = bitcast [17 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([17 x i32]* @__const.main.arr to i8*), i64 68, i1 false)
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3
  %6 = getelementptr inbounds [17 x i32], [17 x i32]* %1, i64 0, i64 0
  %7 = call i32 @foo(i32* %6)
  store i32 %7, i32* %2, align 4, !tbaa !7
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #3
  %9 = bitcast [17 x i32]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 68, i8* %9) #3
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git fc043d8a256b1e431aa1297dffba154a7dd46b25)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
