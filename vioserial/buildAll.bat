@echo off
if "%VIRTIO_WIN_NO_ARM%"=="" call ..\tools\build.bat vioser.sln Win10 ARM64
if errorlevel 1 goto :eof
call ..\tools\build.bat vioser.sln "Win10" %*
if errorlevel 1 goto :eof
call ..\tools\build.bat sys\vioser.vcxproj "Win10_SDV" %*
