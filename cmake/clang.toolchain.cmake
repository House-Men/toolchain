# add_compile_options(-v)
# add_link_options(-v)

set(CLANG_TARGET ${CLANG_TARGET} CACHE STRING "optional clang --target ?")
set(FUSE_LD lld CACHE STRING "lld or ld/link")
set(UNWINDLIB ${UNWINDLIB} CACHE STRING "optional -unwindlib=libgcc/libunwind")
set(RTLIB ${RTLIB} CACHE STRING "optional -rtlib=libgcc/compiler-rt")
set(STDLIB ${STDLIB} CACHE STRING "optional -stdlib=libstdc++/libc++")
set(GCC_TOOLCHAIN_DIR ${GCC_TOOLCHAIN_DIR} CACHE STRING "optional --gcc-toolchain=?")
option(USE_STATIC_RUNTIME "Default Link shared runtime library" OFF)

set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

set(CMAKE_RC_COMPILER llvm-rc)
set(CMAKE_RC_FLAGS "${CMAKE_RC_FLAGS} /C 65001")

if(NOT ${CLANG_TARGET} STREQUAL "")
    set(CMAKE_C_COMPILER_TARGET ${CLANG_TARGET})
    set(CMAKE_CXX_COMPILER_TARGET ${CLANG_TARGET})
	set(CMAKE_ASM_COMPILER_TARGET ${CLANG_TARGET})
endif()

add_link_options(-fuse-ld=${FUSE_LD})

if(NOT ${GCC_TOOLCHAIN_DIR} STREQUAL "")
    add_compile_options(--gcc-toolchain=${GCC_TOOLCHAIN_DIR})
    add_link_options(--gcc-toolchain=${GCC_TOOLCHAIN_DIR})
endif()
if(NOT ${UNWINDLIB} STREQUAL "")
    add_compile_options(-unwindlib=${UNWINDLIB})
    add_link_options(-unwindlib=${UNWINDLIB})
endif()
if(NOT ${RTLIB} STREQUAL "")
    add_compile_options(-rtlib=${RTLIB})
    add_link_options(-rtlib=${RTLIB})
endif()
if(NOT ${STDLIB} STREQUAL "")
    add_compile_options(-stdlib=${STDLIB})
    add_link_options(-stdlib=${STDLIB})
endif()

if(USE_STATIC_RUNTIME)
    add_link_options(-static)
    set(CMAKE_MSVC_RUNTIME_LIBRARY MultiThreaded$<$<CONFIG:Debug>:Debug>)
    if(ANDROID AND NOT CMAKE_ANDROID_STL_TYPE)
        set(CMAKE_ANDROID_STL_TYPE c++_static)
    endif()
else()
    set(CMAKE_MSVC_RUNTIME_LIBRARY MultiThreaded$<$<CONFIG:Debug>:Debug>DLL)
    if(ANDROID AND NOT CMAKE_ANDROID_STL_TYPE)
        set(CMAKE_ANDROID_STL_TYPE c++_shared)
    endif()
endif()
