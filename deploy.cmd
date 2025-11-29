@ECHO OFF

IF "%~1"=="" (
    ECHO Usage: %0 ^<destdir^>
    EXIT /b 1
)

SET DESTDIR=%~1
if "%DESTDIR:~-1%"=="\" set "DESTDIR=%DESTDIR:~0,-1%"

if exist build\quake2.exe (
    COPY build\quake2.exe "%DESTDIR%"
    COPY build\ref_gl.dll "%DESTDIR%"
    COPY build\gamex86.dll "%DESTDIR%\baseq2"
) else (
    COPY build\Debug\quake2.exe "%DESTDIR%"
    COPY build\Debug\ref_gl.dll "%DESTDIR%"
    COPY build\Debug\gamex86.dll "%DESTDIR%\baseq2"
)

