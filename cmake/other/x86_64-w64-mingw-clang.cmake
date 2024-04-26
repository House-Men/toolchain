set(ENV{PATH} "D:/msys64/mingw64/bin;$ENV{PATH}")

set(CMAKE_SYSROOT D:/msys64/mingw64)

set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

set(CLANG_TARGET x86_64-w64-windows-gnu)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

