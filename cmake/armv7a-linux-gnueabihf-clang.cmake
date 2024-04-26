set(CMAKE_SYSROOT $ENV{TOOLCHAIN_HOME}/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/arm-linux-gnueabihf/libc)
set(GCC_TOOLCHAIN_DIR $ENV{TOOLCHAIN_HOME}/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)

set(CLANG_TARGET armv7a-none-linux-gnueabihf)

set(CMAKE_THREAD_LIBS_INIT -lpthread)
set(CMAKE_HAVE_THREADS_LIBRARY ON)
set(CMAKE_USE_WIN32_THREADS_INIT OFF)
set(CMAKE_USE_PTHREADS_INIT ON)
set(THREADS_PREFER_PTHREAD_FLAG ON)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)

