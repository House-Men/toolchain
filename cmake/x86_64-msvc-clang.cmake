set(ENV{PATH} "$ENV{Windows_SDK_HOME}/x64;$ENV{PATH}")

set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

set(CLANG_TARGET x86_64-pc-windows-msvc)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

