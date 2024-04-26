@echo off
setlocal
llvm-strip %*
if ERRORLEVEL 1 exit /b 1