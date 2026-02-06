@echo off
setlocal
clang -fuse-ld=lld --target=arm-linux-gnueabihf -Wl,-dynamic-linker,/lib/ld-uClibc.so.0 --sysroot=E:\toolchain\arm-rockchip830-linux-uclibcgnueabihf\arm-linux-gnueabihf\sysroot --gcc-toolchain=E:\toolchain\arm-rockchip830-linux-uclibcgnueabihf %*
if ERRORLEVEL 1 exit /b 1