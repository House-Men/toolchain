set(ENV{PATH} "D:/msys64/mingw32/bin;$ENV{PATH}")

set(CMAKE_SYSROOT D:/msys64/mingw32)

set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR i686)

set(CLANG_TARGET i686-w64-windows-gnu)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

