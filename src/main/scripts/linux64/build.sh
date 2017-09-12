cmake ../../c++ -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" -DZLIB_INCLUDE_DIR="${PWD}/zlib/linux64/include" -DZLIB_LIBRARY="${PWD}/zlib/linux64/lib/libz.a" -G "Unix Makefiles"

make install
r1=$?

make clean

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -R zlib
rm -R scripts
rm -R tests
rm CTestTestfile.cmake
rm libpng.a
rm libpng.pc
rm libpng.so
rm libpng16.pc
rm libpng16-config
rm libpng-config

return $r1

