set(CMAKE_ANDROID_NDK $ENV{NDK_HOME})
if(NOT DEFINED CMAKE_SYSTEM_VERSION)
    set(CMAKE_SYSTEM_VERSION 21)
endif()

option(CMAKE_ANDROID_RTTI "use rtti" OFF)
option(CMAKE_ANDROID_EXCEPTIONS "use exception" ON)

set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CLANG_TARGET aarch64-none-linux-android${CMAKE_SYSTEM_VERSION})

set(CMAKE_ANDROID_ARCH_ABI arm64-v8a)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

