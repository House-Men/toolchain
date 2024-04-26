@echo off
setlocal
clang++ -fuse-ld=lld --target=arm-linux-gnueabihf --sysroot=E:\toolchain\gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf\arm-linux-gnueabihf\libc --gcc-toolchain=E:\toolchain\gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf %*
if ERRORLEVEL 1 exit /b 1