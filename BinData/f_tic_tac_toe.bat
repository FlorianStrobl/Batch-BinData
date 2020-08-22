@echo off
@mode con cols=45 lines=15
@title Tic Tac Toe
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%
 
:main
@mode con cols=45 lines=15

set z1=1
set z2=2
set z3=3
set z4=4
set z5=5
set z6=6
set z7=7
set z8=8
set z9=9

:Spieler1
cls
echo.
echo                Tic tac toe
echo.
echo.
echo               Spieler 1 setz 0
echo.
echo.
echo                   %z1%___%z2%___%z3%
echo                   .........
echo                   %z4%___%z5%___%z6%
echo                   .........
echo                   %z7%___%z8%___%z9%
echo.

set /p Zahl=Spieler 1 waehlt eine Zahl aus:
if /i %Zahl%==z goto Stop
if %Zahl%==1 goto 1
if %Zahl%==2 goto 2
if %Zahl%==3 goto 3
if %Zahl%==4 goto 4
if %Zahl%==5 goto 5
if %Zahl%==6 goto 6
if %Zahl%==7 goto 7
if %Zahl%==8 goto 8
goto 9

:Spieler2
cls
echo.
echo                Tic tac toe
echo.
echo.
echo               Spieler 2 setz x
echo.
echo.
echo                   %z1%___%z2%___%z3%
echo                   .........
echo                   %z4%___%z5%___%z6%
echo                   .........
echo                   %z7%___%z8%___%z9%
echo.

set /p Zahl=Spieler 2 waehlt eine Zahl aus:
if /i %Zahl%==z goto Stop
if %Zahl%==1 goto F1
if %Zahl%==2 goto F2
if %Zahl%==3 goto F3
if %Zahl%==4 goto F4
if %Zahl%==5 goto F5
if %Zahl%==6 goto F6
if %Zahl%==7 goto F7
if %Zahl%==8 goto F8
goto F9

:check
if %z1%==0 if %z2%==0 if %z3%==0 set spielerZahl=1&&goto GS
if %z4%==0 if %z5%==0 if %z6%==0 set spielerZahl=1&&goto GS
if %z7%==0 if %z8%==0 if %z9%==0 set spielerZahl=1&&goto GS
if %z1%==0 if %z5%==0 if %z9%==0 set spielerZahl=1&&goto GS
if %z3%==0 if %z5%==0 if %z7%==0 set spielerZahl=1&&goto GS
if %z1%==0 if %z4%==0 if %z7%==0 set spielerZahl=1&&goto GS
if %z2%==0 if %z5%==0 if %z8%==0 set spielerZahl=1&&goto GS
if %z3%==0 if %z6%==0 if %z9%==0 set spielerZahl=1&&goto GS

if %z1%==x if %z2%==x if %z3%==x set spielerZahl=2&&goto GS
if %z4%==x if %z5%==x if %z6%==x set spielerZahl=2&&goto GS
if %z7%==x if %z8%==x if %z9%==x set spielerZahl=2&&goto GS
if %z1%==x if %z5%==x if %z9%==x set spielerZahl=2&&goto GS
if %z3%==x if %z5%==x if %z7%==x set spielerZahl=2&&goto GS
if %z1%==x if %z4%==x if %z7%==x set spielerZahl=2&&goto GS
if %z2%==x if %z5%==x if %z8%==x set spielerZahl=2&&goto GS
if %z3%==x if %z6%==x if %z9%==x set spielerZahl=2&&goto GS

if %Zahl%==1 goto N1
if %Zahl%==2 goto N2
if %Zahl%==3 goto N3
if %Zahl%==4 goto N4
if %Zahl%==5 goto N5
if %Zahl%==6 goto N6
if %Zahl%==7 goto N7
if %Zahl%==8 goto N8
if %Zahl%==9 goto N9

:GS
@mode con cols=45 lines=6
cls
echo.
echo Spieler %spielerZahl% hat das Spiel gewonnen!
echo.
set Game=J
set /p Game=Nochmal spielen? [J/N]:
if /i %Game%==J goto main
goto Stop

:1
if %z1%==0 goto Spieler1
if %z1%==x goto Spieler1
set z1=0
goto check

:2
if %z2%==0 goto Spieler1
if %z2%==x goto Spieler1
set z2=0
goto check

:3
if %z3%==0 goto Spieler1
if %z3%==x goto Spieler1
set z3=0
goto check

:4
if %z4%==0 goto Spieler1
if %z4%==x goto Spieler1
set z4=0
goto check

:5
if %z5%==0 goto Spieler1
if %z5%==x goto Spieler1
set z5=0
goto check

:6
if %z6%==0 goto Spieler1
if %z6%==x goto Spieler1
set z6=0
goto check

:7
if %z7%==0 goto Spieler1
if %z7%==x goto Spieler1
set z7=0
goto check

:8
if %z8%==0 goto Spieler1
if %z8%==x goto Spieler1
set z8=0
goto check

:9
if %z9%==0 goto Spieler1
if %z9%==x goto Spieler1
set z9=0
goto check

:F1
if %z1%==x goto Spieler2
if %z1%==0 goto Spieler2
set z1=x
goto check

:F2
if %z2%==x goto Spieler2
if %z2%==0 goto Spieler2
set z2=x
goto check

:F3
if %z3%==x goto Spieler2
if %z3%==0 goto Spieler2
set z3=x
goto check

:F4
if %z4%==x goto Spieler2
if %z4%==0 goto Spieler2
set z4=x
goto check

:F5
if %z5%==x goto Spieler2
if %z5%==0 goto Spieler2
set z5=x
goto check

:F6
if %z6%==x goto Spieler2
if %z6%==0 goto Spieler2
set z6=x
goto check

:F7
if %z7%==x goto Spieler2
if %z7%==0 goto Spieler2
set z7=x
goto check

:F8
if %z8%==x goto Spieler2
if %z8%==0 goto Spieler2
set z8=x
goto check

:F9
if %z9%==x goto Spieler2
if %z9%==0 goto Spieler2
set z9=x
goto check

:N1
if %z1%==0 goto Spieler2
goto Spieler1

:N2
if %z2%==0 goto Spieler2
goto Spieler1

:N3
if %z3%==0 goto Spieler2
goto Spieler1

:N4
if %z4%==0 goto Spieler2
goto Spieler1

:N5
if %z5%==0 goto Spieler2
goto Spieler1

:N6
if %z6%==0 goto Spieler2
goto Spieler1

:N7
if %z7%==0 goto Spieler2
goto Spieler1

:N8
if %z8%==0 goto Spieler2
goto Spieler1

:N9
if %z9%==0 goto Spieler2
goto Spieler1

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat