@echo off
setlocal
ld.lld %*
if ERRORLEVEL 1 exit /b 1