echo off
clear
echo "Main Dependencies"
echo "-----------------"
JS_COMPILER="../../compiler-latest/compiler.jar"
JS_COMPILER_LEVEL="SIMPLE_OPTIMIZATIONS"

python closure-library/closure/bin/build/depswriter.py \
--root_with_prefix="js ../../../js" \
--root="library" \
  > live/js-deps.js


python closure-library/closure/bin/build/closurebuilder.py \
--root="closure-library/" \
--root="js" \
--namespace="gb" \
--output_mode=compiled \
--compiler_jar=$JS_COMPILER \
--compiler_flags="--compilation_level=$JS_COMPILER_LEVEL" > compiled/js-compiled.js
