@echo off
setlocal
clang++ --target=i686-w64-windows-msvc -fuse-ld=lld -lmsvcrt %*
if ERRORLEVEL 1 exit /b 1