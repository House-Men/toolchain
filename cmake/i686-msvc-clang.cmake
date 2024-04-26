set(ENV{PATH} "$ENV{Windows_SDK_HOME}/x86;$ENV{PATH}")

set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR i686)

set(CLANG_TARGET i686-pc-windows-msvc)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

