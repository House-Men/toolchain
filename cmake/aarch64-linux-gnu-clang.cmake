set(CMAKE_SYSROOT $ENV{TOOLCHAIN_HOME}/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/aarch64-linux-gnu/libc)
set(GCC_TOOLCHAIN_DIR $ENV{TOOLCHAIN_HOME}/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CLANG_TARGET aarch64-none-linux-gnu)

set(CMAKE_THREAD_LIBS_INIT -lpthread)
set(CMAKE_HAVE_THREADS_LIBRARY ON)
set(CMAKE_USE_WIN32_THREADS_INIT OFF)
set(CMAKE_USE_PTHREADS_INIT ON)
set(THREADS_PREFER_PTHREAD_FLAG ON)

include($ENV{TOOLCHAIN_HOME}/cmake/clang.toolchain.cmake)
