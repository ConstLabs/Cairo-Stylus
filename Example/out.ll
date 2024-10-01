; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare ptr @realloc(ptr, i64)

declare void @free(ptr)

declare i32 @cairo_native__libfunc__debug__print(i32, ptr, i32)

define {} @"impl$hello::hello::greet(f0)"(i252 %0) !dbg !3 {
  %2 = call ptr @realloc(ptr null, i64 256), !dbg !6
  store i252 310939249775, ptr %2, align 16, !dbg !6
  %3 = call i32 @cairo_native__libfunc__debug__print(i32 1, ptr %2, i32 1), !dbg !7
  %4 = call ptr @realloc(ptr null, i64 256), !dbg !8
  store i252 %0, ptr %4, align 16, !dbg !8
  %5 = call i32 @cairo_native__libfunc__debug__print(i32 1, ptr %4, i32 1), !dbg !9
  ret {} undef, !dbg !10
}

define void @"hello::hello::greet(f0)"(i252 %0) {
  %2 = call {} @"impl$hello::hello::greet(f0)"(i252 %0)
  ret void
}

define void @"_mlir_ciface_hello::hello::greet(f0)"(i252 %0) {
  call void @"hello::hello::greet(f0)"(i252 %0)
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C, file: !2, producer: "cairo-native", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!2 = !DIFile(filename: "program.sierra", directory: ".")
!3 = distinct !DISubprogram(name: "hello::hello::greet(f0)", linkageName: "hello::hello::greet(f0)", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !1)
!4 = !DISubroutineType(types: !5)
!5 = !{}
!6 = !DILocation(line: 16, scope: !3)
!7 = !DILocation(line: 18, scope: !3)
!8 = !DILocation(line: 20, scope: !3)
!9 = !DILocation(line: 22, scope: !3)
!10 = !DILocation(line: 23, scope: !3)
