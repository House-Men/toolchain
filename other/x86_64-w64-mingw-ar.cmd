@echo off
setlocal
llvm-ar %*
if ERRORLEVEL 1 exit /b 1