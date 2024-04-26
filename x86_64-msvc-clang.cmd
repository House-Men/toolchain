@echo off
setlocal
clang --target=x86_64-pc-windows-msvc -fuse-ld=lld %*
if ERRORLEVEL 1 exit /b 1