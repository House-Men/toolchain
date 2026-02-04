set(CMAKE_SYSROOT $ENV{TOOLCHAIN_HOME}/arm-rockchip830-linux-uclibcgnueabihf/arm-linux-gnueabihf/sysroot)
set(GCC_TOOLCHAIN_DIR $ENV{TOOLCHAIN_HOME}/arm-rockchip830-linux-uclibcgnueabihf)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)

set(CLANG_TARGET armv7a-none-linux-gnueabihf)

set(CMAKE_THREAD_LIBS_INIT -lpthread)
set(CMAKE_HAVE_THREADS_LIBRARY ON)
set(CMAKE_USE_WIN32_THREADS_INIT OFF)
set(CMAKE_USE_PTHREADS_INIT ON)
set(THREADS_PREFER_PTHREAD_FLAG ON)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

