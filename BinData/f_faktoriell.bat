@echo off
@mode con cols=45 lines=15
@title Faktoriell
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:Start
cls
set n=2
set /p n=N (2-12)=
set NN=%n%
set z=%n%
set index=%n%
cls
:1
set /a index=%index%-1
set n=%z%
if %index%==1 goto Fertig
set /a z=%index%*%n%
goto 1

:Fertig
cls
echo %NN%!= %z%
echo.
set Nochmal=J
set /p Nochmal=Nochmal? [J/N]:
if /i %Nochmal%==J goto Start

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat