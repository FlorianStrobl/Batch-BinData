@echo off
@mode con cols=45 lines=15
@title Primzahlenzerlegung
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:mainLoop
set shownNumbers=
cls
set /p N= Zahl eingeben: 
if %N%==z goto Stop1
set theNumber=%N%
cls
echo Am berechnen
if %N% LEQ 3 goto kleinerDrei
set k=2
set n=%N%

:Teilbar
set /a a=(%n%/%k%)*%k%
if %a%==%n% goto write
goto C
:midCode
set /a n=%n%/%k%
if %n%==1 goto fertig
goto Teilbar

:write
if "%shownNumbers%"=="" set shownNumbers=%k%
if not "%shownNumbers%"=="" set shownNumbers=%shownNumbers%*%k%
goto midCode

:kleinerDrei
echo %N%=%N%
pause >NUL
goto Stop

:fertig
cls
echo %theNumber%=%shownNumbers%
pause >NUL
goto Stop

:C
set /a k=%k%+1
goto Teilbar

:Stop
cls
set Nochmal=J
set /p Nochmal=Nochmal? [J/N]:
if /i %Nochmal%==J goto mainLoop

:Stop1
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat