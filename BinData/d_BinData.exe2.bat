@echo off
@mode con cols=44 lines=17
@title BinData menue
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

del /q 1.txt
(
echo
) >> "2.txt"

:mainLoop
mode con cols=44 lines=17
set Va=1
cls
echo                   BinData
echo.
echo                  -Youtube-
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.

:eingabe
choice /n /c zqws
if errorlevel 255 goto eingabe
if errorLevel 4 goto Runter
if errorlevel 3 goto Hoch
if errorlevel 2 goto eingabeCheck
if errorlevel 1 exit
if errorlevel 0 goto eingabe

:Runter
if %Va%==12 set Va=1&&goto 1
set /a Va=%Va%+1
goto %Va%

:Hoch
if %Va%==1 set Va=12&&goto 12
set /a Va=%Va%-1
goto %Va%

:eingabeCheck
if %Va%==1 Start www.youtube.com&&goto eingabe
if %Va%==2 call e_Rechner.bat
if %Va%==3 call e_TicTacToe.bat
if %Va%==4 start taskmgr.exe&&goto mainLoop
if %Va%==5 start explorer.exe&&goto mainLoop
if %Va%==6 goto showVersion
if %Va%==7 call e_Naricht.bat
if %Va%==8 goto website
if %Va%==9 call d_BinData.exe.bat
if %Va%==10 start f_passwort_aus.bat&&goto mainLoop
if %Va%==11 start f_passwort_an.bat&&goto mainLoop
if %Va%==12 exit

:showVersion
cls
mode con cols=27 lines=3
for /f %%a in (h_Version.txt) do set theVersion=%%a
echo %theVersion%
pause>nul
goto mainLoop

:website
cls
mode con cols=44 lines=5
set Website=z
set /p Website=Website (wie google.com): 
if %Website%==z goto mainLoop
start www.%Website%
goto mainLoop

:1
cls
echo                   BinData
echo.
echo                  -Youtube-
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:2
cls
echo                   BinData
echo.
echo                   Youtube
echo               -Taschenrechner-
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:3
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                -Tic Tac Toe-
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:4
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo               -Task-Manager-
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:5
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                 -Explorer-
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:6
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo              -BinData version-
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:7
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                 -Narichten-
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:8
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                 -Website-
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:9
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                  -Menue-
echo                Passwort aus
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:10
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo               -Passwort aus-
echo                Passwort an
echo                    Stop
echo.
goto eingabe

:11
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo               -Passwort an-
echo                    Stop
echo.
goto eingabe

:12
cls
echo                   BinData
echo.
echo                   Youtube
echo                Taschenrechner
echo                 Tic Tac Toe
echo                Task-Manager
echo                  Explorer
echo               BinData version
echo                  Narichten
echo                  Website
echo                   Menue
echo                Passwort aus
echo                Passwort an
echo                   -Stop-
echo.
goto eingabe
