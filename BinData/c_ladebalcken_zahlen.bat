@echo off
@mode con cols=28 lines=2
@title ...
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

set /a laden=0

:mainLoop
set /a laden=%laden%+1
echo.
echo %laden%%%
ping localhost -n 0.03 >NUL
if %laden%==100 goto stop
goto mainLoop

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat