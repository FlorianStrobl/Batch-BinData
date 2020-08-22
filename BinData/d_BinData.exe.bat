@echo off
@mode con cols=44 lines=16
@title BinData menue
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

del /q 2.txt
(
echo
) >> "1.txt"

:mainLoop
mode con cols=44 lines=16
cls
echo                    BinData
echo.
echo Task-Manager    -----------------------}   A
echo Explorer        -----------------------}   B
echo Website         -----------------------}   C
echo Youtube         -----------------------}   D
echo Taschenrechner  -----------------------}   E
echo Tic Tac Toe     -----------------------}   F
echo Narichten       -----------------------}   G
echo Version         -----------------------}   H
echo Einstellungen   -----------------------}   X
echo Stop/zurueck    -----------------------}   Z

set /p eingabe=
if /i %eingabe%==A start taskmgr.exe&&goto mainLoop
if /i %eingabe%==B start explorer.exe&&goto mainLoop
if /i %eingabe%==C goto website
if /i %eingabe%==D start www.youtube.com&&goto mainLoop
if /i %eingabe%==E call e_rechner.bat
if /i %eingabe%==F call e_TicTacToe.bat
if /i %eingabe%==G call e_Naricht.bat
if /i %eingabe%==H goto showVersion
if /i %eingabe%==X call d_Einstellungen.bat
if /i %eingabe%==Z exit
cls
echo Keine gueltige Eingabe
ping /n 2 localhost >NUL
goto mainLoop

:website
cls
mode con cols=44 lines=5
set Website=z
set /p Website=Website (wie google.com): 
if %Website%==z goto mainLoop
start www.%Website%
goto mainLoop

:showVersion
cls
mode con cols=27 lines=3
for /f %%A in (h_Version.txt) do set Text=%%A
echo %Text%
pause >NUL
goto mainLoop