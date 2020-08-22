@echo off
@mode con cols=30 lines=4
@title Tic Tac Toe
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:mainLoop
cls
echo TicTacToe 2 Spieler        - A
echo TicTacToe Computer         - B

set /p test=
if /i %test%==A call f_tic_tac_toe.bat
if /i %test%==B call f_tic_tac_toe2.bat
if /i %test%==Z goto stop
cls
echo Keine gueltige Eingabe
ping /n 2 localhost >NUL
goto mainLoop

:Stop
if exist 2.txt call d_BinData.exe2.bat
call d_BinData.exe.bat