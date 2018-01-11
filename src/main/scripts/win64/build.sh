cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/win64" \
-DZLIB_INCLUDE_DIR="${PWD}/zlib/win64/include" \
-DZLIB_LIBRARY="${PWD}/zlib/win64/lib/libzlibstatic.a" \
-DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make install
r1=$?

make clean

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -R zlib
rm -R tests
rm -R scripts
rm CTestTestfile.cmake
rm libpng.a
rm libpng.dll.a
rm libpng.pc
rm libpng16.pc
rm libpng16-config
rm libpng-config

return $r1
