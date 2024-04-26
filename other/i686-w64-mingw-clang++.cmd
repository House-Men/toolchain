@echo off
setlocal
clang++ --target=i686-w64-windows-gnu --sysroot=D:\msys64\mingw32 -fuse-ld=lld %*
if ERRORLEVEL 1 exit /b 1