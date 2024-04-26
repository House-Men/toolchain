@echo off
setlocal
clang++ --target=i686-w64-windows-msvc -fuse-ld=lld %*
if ERRORLEVEL 1 exit /b 1