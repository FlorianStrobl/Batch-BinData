@echo off
@mode con cols=45 lines=15
@title Matrizen
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

set A=a 
set B=b 
set C=c 
set D=d 
set A2=a2 
set B2=b2 
set C2=c2 
set D2=d2 
set A3=
set B3=
set C3=
set D3=
set A33=
set B33=
set C33=
set D33=
set A4=
set B4=
set C4=
set D4=


:1
set A=a 
set B=b 
set C=c 
set D=d 
set A2=a2 
set B2=b2 
set C2=c2 
set D2=d2 
set A3=
set B3=
set C3=
set D3=
set A33=
set B33=
set C33=
set D33=
set A4=
set B4=
set C4=
set D4=
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

:1.1

cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p A=a=
if %A%==a goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p B=b=
if %B%==b goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p C=c=
if %C%==c goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p D=d=
if %D%==d goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p A2=a2=
if %A2%==a2 goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p B2=b2=
if %B2%==b2 goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p C2=c2=
if %C2%==c2 goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.

set /p D2=d2=
if %D2%==d2 goto Fehler
cls
echo.
echo (%A% %B%) (%A2% %B2%)
echo (%C% %D%) (%C2% %D2%)
echo.


set /a A3=%A%*%A2%
set /a B3=%B%*%C2%
set /a A4=%A3%+%B3%

set /a C3=%A%*%B2%
set /a D3=%B%*%D2%
set /a B4=%C3%+%D3%

set /a A33=%C%*%A2%
set /a B33=%D%*%C2%
set /a C4=%A33%+%B33%

set /a C33=%C%*%B2%
set /a D33=%D%*%D2%
set /a D4=%C33%+%D33%

cls

echo.
echo (%A% %B%) (%A2% %B2%) = (%A4% %B4%)
echo (%C% %D%) (%C2% %D2%) = (%C4% %D4%)
echo.

set Nochmal=J
set /p Nochmal=Nochmal? [J/N]:
if /i %Nochmal%==J goto 1
goto Stop

:Fehler
cls
echo Keine gueltige Eingabe
ping /n 2.5 localhost >NUL
goto 1.1

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat