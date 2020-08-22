@echo off
@mode con cols=44 lines=5
@title Einstellungen
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:mainLoop
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

cls
echo Interface       -----------------------}   A
echo Color           -----------------------}   B
echo Passwort an     -----------------------}   X
echo Passwort aus    -----------------------}   Y

set /p test=
if /i %test%==A call d_BinData.exe2.bat
if /i %test%==B goto colorChange
if /i %test%==X start g_passwort_an.bat&&goto mainLoop
if /i %test%==Y start g_passwort_aus.bat&&goto mainLoop
if /i %test%==Z goto stop
cls
echo Keine gueltige Eingabe
ping /n 2 localhost >NUL
goto mainLoop

:colorChange
del h_color.txt
cls
set /p theColor=(Weiss: f, Gruen: a, Rot: c): 
(
echo %theColor%
)>>h_color.txt
goto mainLoop

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat