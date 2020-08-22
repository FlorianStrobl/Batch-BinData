@echo off
@mode con cols=30 lines=7
@title Rechner
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:mainLoop
cls
echo Taschenrechner             - A
echo Matrix                     - B
echo Matrix hoch n              - C
echo Faktoriell                 - D
echo Primzahlzerlegung          - E

set /p test=
if /i %test%==A call f_taschenrechner.bat
if /i %test%==B call f_matrizen.bat
if /i %test%==C call f_matrizen_hoch.bat
if /i %test%==D call f_faktoriell.bat
if /i %test%==E call f_primzahlenzerlegung.bat
if /i %test%==Z goto stop
cls
echo Keine gueltige Eingabe
ping /n 2 localhost >NUL
goto mainLoop

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat