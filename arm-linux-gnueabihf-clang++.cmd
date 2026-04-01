@echo off
setlocal
clang++ -fuse-ld=lld --target=arm-linux-gnueabihf --sysroot=%TOOLCHAIN_HOME%\gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf\arm-linux-gnueabihf\libc --gcc-toolchain=%TOOLCHAIN_HOME%\gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf %*
if ERRORLEVEL 1 exit /b 1