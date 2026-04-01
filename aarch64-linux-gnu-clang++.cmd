@echo off
setlocal
clang++ -fuse-ld=lld --target=aarch64-linux-gnu --sysroot=%TOOLCHAIN_HOME%\gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu\aarch64-linux-gnu\libc --gcc-toolchain=%TOOLCHAIN_HOME%\gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu %*
if ERRORLEVEL 1 exit /b 1