@echo off
setlocal
llvm-nm %*
if ERRORLEVEL 1 exit /b 1