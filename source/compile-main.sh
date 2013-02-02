echo off
clear
echo "Compiling and Generating Dependency Files"
echo "-----------------------------------------"
JS_COMPILER="../../compiler-latest/compiler.jar"
JS_COMPILER_LEVEL="--compilation_level=SIMPLE_OPTIMIZATIONS"

python closure-library/closure/bin/build/depswriter.py \
--root="closure-library" \
--root_with_prefix="library ../../../library" \
--root_with_prefix="js ../../../js" \
--output_file live/js-deps.js

python closure-library/closure/bin/build/closurebuilder.py \
--namespace="gb" \
--root="closure-library" \
--root="library" \
--root="js" \
--output_mode=compiled \
--compiler_jar=$JS_COMPILER \
--compiler_flags="--process_closure_primitives" \
--compiler_flags="--generate_exports" \
--compiler_flags="--externs=js/underscore-1.3.3.js" \
--compiler_flags="--externs=js/backbone-0.9.2-externs.js" \
--compiler_flags=$JS_COMPILER_LEVEL \
 > compiled/js-compiled.js