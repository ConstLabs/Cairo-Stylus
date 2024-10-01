#loc2 = loc("program.sierra":13:0)
module attributes {llvm.data_layout = "e-m:o-i64:64-i128:128-n32:64-S128", llvm.target_triple = "wasm32-unknown-unknown"} {
  llvm.func @realloc(!llvm.ptr, i64) -> !llvm.ptr attributes {sym_visibility = "private"} loc(#loc1)
  llvm.func @free(!llvm.ptr) attributes {sym_visibility = "private"} loc(#loc1)
  llvm.func @cairo_native__libfunc__debug__print(i32, !llvm.ptr, i32) -> i32 attributes {sym_visibility = "private"} loc(#loc1)
  llvm.func @"impl$hello::hello::greet(f0)"(%arg0: i252 loc("program.sierra":13:0)) -> !llvm.struct<()> attributes {sym_visibility = "public"} {
    %0 = llvm.mlir.constant(256 : i64) : i64 loc(#loc1)
    %1 = llvm.mlir.constant(1 : i32) : i32 loc(#loc1)
    %2 = llvm.mlir.constant(310939249775 : i252) : i252 loc(#loc1)
    %3 = llvm.mlir.zero : !llvm.ptr loc(#loc9)
    %4 = llvm.call @realloc(%3, %0) : (!llvm.ptr, i64) -> !llvm.ptr loc(#loc10)
    llvm.store %2, %4 : i252, !llvm.ptr loc(#loc10)
    %5 = llvm.call @cairo_native__libfunc__debug__print(%1, %4, %1) : (i32, !llvm.ptr, i32) -> i32 loc(#loc11)
    %6 = llvm.mlir.zero : !llvm.ptr loc(#loc12)
    %7 = llvm.call @realloc(%6, %0) : (!llvm.ptr, i64) -> !llvm.ptr loc(#loc13)
    llvm.store %arg0, %7 : i252, !llvm.ptr loc(#loc13)
    %8 = llvm.call @cairo_native__libfunc__debug__print(%1, %7, %1) : (i32, !llvm.ptr, i32) -> i32 loc(#loc14)
    %9 = llvm.mlir.undef : !llvm.struct<()> loc(#loc15)
    llvm.return %9 : !llvm.struct<()> loc(#loc15)
  } loc(#loc17)
  llvm.func @"hello::hello::greet(f0)"(%arg0: i252 loc("program.sierra":13:0)) attributes {llvm.emit_c_interface} {
    %0 = llvm.call @"impl$hello::hello::greet(f0)"(%arg0) : (i252) -> !llvm.struct<()> loc(#loc2)
    llvm.return loc(#loc2)
  } loc(#loc2)
  llvm.func @"_mlir_ciface_hello::hello::greet(f0)"(%arg0: i252 loc("program.sierra":13:0)) attributes {llvm.emit_c_interface} {
    llvm.call @"hello::hello::greet(f0)"(%arg0) : (i252) -> () loc(#loc2)
    llvm.return loc(#loc2)
  } loc(#loc1)
} loc(#loc16)
#di_file = #llvm.di_file<"program.sierra" in "">
#di_file1 = #llvm.di_file<"program.sierra" in ".">
#di_subroutine_type = #llvm.di_subroutine_type<>
#distinct = distinct[0]<"compile_unit_id">
#distinct1 = distinct[1]<"fn_0">
#loc = loc("program.sierra":0:0)
#loc1 = loc(unknown)
#loc3 = loc("program.sierra":16:0)
#loc4 = loc("program.sierra":18:0)
#loc5 = loc("program.sierra":19:0)
#loc6 = loc("program.sierra":20:0)
#loc7 = loc("program.sierra":22:0)
#loc8 = loc("program.sierra":23:0)
#di_compile_unit = #llvm.di_compile_unit<id = #distinct, sourceLanguage = DW_LANG_Rust, file = #di_file, producer = "cairo-native", isOptimized = false, emissionKind = Full>
#di_compile_unit1 = #llvm.di_compile_unit<id = #distinct, sourceLanguage = DW_LANG_C, file = #di_file1, producer = "cairo-native", isOptimized = false, emissionKind = Full>
#loc9 = loc("array_new<felt252>(stmt_idx=0)"(#loc2))
#loc10 = loc("array_append<felt252>(stmt_idx=3)"(#loc3))
#loc11 = loc("print(stmt_idx=5)"(#loc4))
#loc12 = loc("array_new<felt252>(stmt_idx=6)"(#loc5))
#loc13 = loc("array_append<felt252>(stmt_idx=7)"(#loc6))
#loc14 = loc("print(stmt_idx=9)"(#loc7))
#loc15 = loc("return(stmt_idx=10)"(#loc8))
#di_module = #llvm.di_module<file = #di_file, scope = #di_compile_unit, name = "LLVMDialectModule", configMacros = "", includePath = "", apinotes = "">
#di_subprogram = #llvm.di_subprogram<id = #distinct1, compileUnit = #di_compile_unit1, scope = #di_file1, name = "hello::hello::greet(f0)", linkageName = "hello::hello::greet(f0)", file = #di_file1, line = 13, scopeLine = 13, subprogramFlags = Definition, type = #di_subroutine_type>
#loc16 = loc(fused<#di_module>[#loc])
#loc17 = loc(fused<#di_subprogram>[#loc2])
