@echo off
@mode con cols=45 lines=15
@title Tic Tac Toe
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:mainLoop
set /a Runde=%Runde%+1
set z1=7
set z2=8
set z3=9
set z4=4
set z5=5
set z6=6
set z7=1
set z8=2
set z9=3
cls

echo.
echo Spieler setzt 0
echo                          Runde %Runde%
echo                  %z1%__%z2%__%z3%
echo                  %z4%__%z5%__%z6%
echo                  %z7%__%z8%__%z9%
echo.

set /p Zahl=Waehle eine Zahl:
if %Zahl%==z goto Stop
if %Zahl%==8 goto A2
if %Zahl%==4 goto A4
if %Zahl%==6 goto A6
if %Zahl%==2 goto A8
goto U

:A2
set z2=0
goto Computer

:A4
set z4=0
goto Computer

:A6
set z6=0
goto Computer

:A8
set z8=0
goto Computer

:Computer
set z5=X
cls

echo.
echo Computer setzt X
echo                          Runde %Runde%
echo                  %z1%__%z2%__%z3%
echo                  %z4%__%z5%__%z6%
echo                  %z7%__%z8%__%z9%
echo.
cls

:Spieler2

echo.
echo Spieler setzt 0
echo                          Runde %Runde%
echo                  %z1%__%z2%__%z3%
echo                  %z4%__%z5%__%z6%
echo                  %z7%__%z8%__%z9%
echo.

set /p Zahl=Waehle eine Zahl:
if %Zahl%==z goto Stop
if %Zahl%==8 goto B2
if %Zahl%==4 goto B4
if %Zahl%==6 goto B6
if %Zahl%==2 goto B8
goto U

:B2
if %z2%==0 goto Computer
if %z2%==X goto Computer
if %z8%==0 goto V
if %z6%==0 goto U
if %z4%==0 goto U
goto Computer

:B4
if %z4%==0 goto Computer
if %z4%==X goto Computer
if %z6%==0 goto V
if %z2%==0 goto U
if %z8%==0 goto U
goto Computer

:B6
if %z6%==0 goto Computer
if %z6%==X goto Computer
if %z4%==0 goto V
if %z2%==0 goto U
if %z8%==0 goto U
goto Computer

:B8
if %z8%==0 goto Computer
if %z8%==X goto Computer
if %z2%==0 goto V
if %z6%==0 goto U
if %z4%==0 goto U
goto Computer

:U
cls
echo Unenschieden!
pause >NUL
goto Runde2

:V
cls
echo Du hast Verloren!
pause >NUL
cls
goto Runde2

:Runde2
set /a Runde=%Runde%+1
set z1=7
set z2=8
set z3=9
set z4=4
set z5=5
set z6=6
set z7=1
set z8=2
set z9=3
cls

echo.
echo Computer setzt X
set z5=X
echo                          Runde %Runde%
echo                  %z1%__%z2%__%z3%
echo                  %z4%__%z5%__%z6%
echo                  %z7%__%z8%__%z9%
echo.
cls

echo.
echo Spieler setzt 0
echo                          Runde %Runde%
echo                  %z1%__%z2%__%z3%
echo                  %z4%__%z5%__%z6%
echo                  %z7%__%z8%__%z9%
echo.
:Fehler1
set /p Zahl2=Waehle eine Zahl:
if %Zahl%==z goto Stop
if %Zahl2%==5 goto Fehler1
if %Zahl2%==8 goto V2
if %Zahl2%==4 goto V2
if %Zahl2%==6 goto V2
if %Zahl2%==2 goto V2
if %Zahl2%==7 goto U2
if %Zahl2%==9 goto U2
if %Zahl2%==1 goto U2
if %Zahl2%==3 goto U2

:V2
cls
echo Du hast Verloren!
pause >NUL
goto mainLoop

:U2
cls
echo Unenschieden!
pause >NUL
goto mainLoop

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat