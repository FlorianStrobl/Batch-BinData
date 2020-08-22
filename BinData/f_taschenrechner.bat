@echo off
@mode con cols=45 lines=15
@title Taschenrechner
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:rechnung
cls
set Zahl1=
set Zahl2=
set symbol=
set number=

:1
set /p Zahl1=Erste Zahl: 
if %Zahl1%==z goto Stop
set /a number=%Zahl1%/%Zahl1%
if NOT %number%==1 goto Fehler1

echo.
set /p symbol= (+ - * /): 
if %symbol%==z goto Stop
echo.

:2
set /p Zahl2=Zweite Zahl: 
if %Zahl2%==z goto Stop
set /a number=%Zahl2%/%Zahl2%
if NOT %number%==1 goto Fehler2

set /a Erg= %Zahl1% %symbol% %Zahl2%

cls

echo %Zahl1%%symbol%%Zahl2%=%Erg%

pause>NUL
goto rechnung

:Fehler1
cls
echo Fehlerhafte Eingabe!
ping /n 2.5 localhost >NUL
goto rechnung

:Fehler2
cls
echo Fehlerhafte Eingabe!
ping /n 2.5 localhost >NUL
cls
echo Erste Zahl: %Zahl1%
echo.
echo (+ - * /): %Symbol%
echo.
goto 2

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat