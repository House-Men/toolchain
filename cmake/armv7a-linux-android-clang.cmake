set(CMAKE_ANDROID_NDK $ENV{NDK_HOME})
if(NOT DEFINED CMAKE_SYSTEM_VERSION)
    set(CMAKE_SYSTEM_VERSION 19)
endif()

option(CMAKE_ANDROID_RTTI "use rtti" OFF)
option(CMAKE_ANDROID_EXCEPTIONS "use exception" ON)

set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)

set(CLANG_TARGET armv7a-none-linux-android${CMAKE_SYSTEM_VERSION})

set(CMAKE_ANDROID_ARCH_ABI armeabi-v7a)
set(CMAKE_ANDROID_ARM_MODE OFF)
set(CMAKE_ANDROID_ARM_NEON ON)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

