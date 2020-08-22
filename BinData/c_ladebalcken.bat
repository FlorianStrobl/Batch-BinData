@echo off
@mode con cols=28 lines=2
@title ...
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

set index=0

:mainLoop
set /a index=%index%+1
if /i %index%==4 call c_ladebalcken_zahlen.bat
cls
echo ³                ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²               ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²              ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²             ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²            ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²           ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²          ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²         ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²        ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²       ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²²      ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²²²     ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²²²²    ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²²²²²   ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²²²²²² ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²²²²²²² ³
ping -n 1.5 127.0.0.1>NUL
echo.
echo ³²²²²²²²²²²²²²²²²³
ping -n 1.5 127.0.0.1>NUL
goto mainLoop