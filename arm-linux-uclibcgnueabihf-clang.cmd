@echo off
setlocal
clang -fuse-ld=lld --target=arm-linux-gnueabihf --sysroot=E:\toolchain\arm-rockchip830-linux-uclibcgnueabihf\arm-linux-gnueabihf\sysroot --gcc-toolchain=E:\toolchain\arm-rockchip830-linux-uclibcgnueabihf %*
if ERRORLEVEL 1 exit /b 1