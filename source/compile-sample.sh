echo off
clear
echo "Compiling sample/"
echo "-----------------"
JS_COMPILER="compiler-latest/compiler.jar"
JS_COMPILER_LEVEL="ADVANCED_OPTIMIZATIONS"
python closure-library/closure/bin/build/closurebuilder.py \
--root=closure-library/ \
--root=sample/ \
--namespace="sample.start" \
--output_mode=compiled \
--compiler_jar=$JS_COMPILER \
--compiler_flags="--compilation_level=$JS_COMPILER_LEVEL" > sample/start-compiled.js
