@echo off
@mode con cols=45 lines=15
@title Matrizen
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:1
cls
set A=a 
set B=b 
set C=c 
set D=d 
set n=n
cls
echo.
echo (%A% %B%)%n%
echo (%C% %D%) 
echo.

set /p A=a=
cls
echo.
echo (%A% %B%)%n%
echo (%C% %D%) 
echo.

set /p B=b=
cls
echo.
echo (%A% %B%)%n%
echo (%C% %D%) 
echo.

set /p C=c=
cls
echo.
echo (%A% %B%)%n%
echo (%C% %D%) 
echo.

set /p D=d=
cls
echo.
echo (%A% %B%)%n%
echo (%C% %D%) 
echo.

set /p n=n=
cls
echo.
echo (%A% %B%)%n%
echo (%C% %D%) 
echo.

set n2=%n%
set A2=%A%
set B2=%B%
set C2=%C%
set D2=%D%
goto NN

:N

set A2=%A4%
set B2=%B4%
set C2=%C4%
set D2=%D4%

:NN

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

set /a n=%n%-1
if %n%==1 goto Fertig
goto N

:Fertig
cls
echo.
echo (%A% %B%)%n2% = (%A4% %B4%)
echo (%C% %D%)     = (%C4% %D4%)
echo.

pause >NUL
cls
set Nochmal=J
set /p Nochmal=Nochmal? [J/N]:
if /i %Nochmal%==J goto 1

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat