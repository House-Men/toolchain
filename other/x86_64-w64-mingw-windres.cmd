@echo off
setlocal
windres %*
if ERRORLEVEL 1 exit /b 1