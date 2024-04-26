option(USE_STATIC_LIB "Default Link library static/shared" OFF)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)

set(CMAKE_C_COMPILER armv7a-none-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER armv7a-none-linux-gnueabihf-g++)

if(USE_STATIC_LIB)
    add_link_options(-static)
endif()

