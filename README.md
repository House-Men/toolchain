- Linux Clang env
```shell
export WINSDK_ROOT='/mnt/d/Windows Kits/10'
export WINSDK_VER='10.0.17763.0'
export MSVC_ROOT='/mnt/d/Program Files (x86)/Microsoft Visual Studio/2017/Enterprise/VC/Tools/MSVC/14.16.27023'
export TOOLCHAIN_HOME=/mnt/e/toolchain
export PATH=$TOOLCHAIN_HOME:$PATH
```
- Windows Clang env
```shell
set TOOLCHAIN_HOMEA=E:/toolchain
setx TOOLCHAIN_HOME %TOOLCHAIN_HOMEA%
setx PATH "%TOOLCHAIN_HOMEA%;%PATH%"
```
