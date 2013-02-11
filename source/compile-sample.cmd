echo off
clear
echo "Compiling sample/"
echo "-----------------"
set JS_COMPILER="c:\java\bin\compiler\compiler.jar"
set JS_COMPILER_LEVEL="ADVANCED_OPTIMIZATIONS"

python closure-library/closure/bin/build/closurebuilder.py ^
--root=closure-library/ ^
--root=sample/ ^
--root=thirdparty/ ^
--namespace="sample.start" ^
--compiler_flags="--compilation_level=%JS_COMPILER_LEVEL%" ^
--compiler_jar=%JS_COMPILER% ^
--output_mode=compiled > sample/start-compiled.js