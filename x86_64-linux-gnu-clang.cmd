@echo off
setlocal
clang -fuse-ld=lld --target=x86_64-pc-linux-gnu --sysroot=E:\toolchain\x86_64-debian10-linux-gnu --gcc-toolchain=E:\toolchain\x86_64-debian10-linux-gnu\usr %*
if ERRORLEVEL 1 exit /b 1