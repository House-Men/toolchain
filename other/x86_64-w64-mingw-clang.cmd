@echo off
setlocal
clang --target=x86_64-w64-windows-gnu --sysroot=D:\msys64\mingw64 -fuse-ld=lld %*
if ERRORLEVEL 1 exit /b 1