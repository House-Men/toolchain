@echo off
setlocal
llvm-objcopy %*
if ERRORLEVEL 1 exit /b 1