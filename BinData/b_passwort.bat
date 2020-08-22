@echo off
@mode con cols=28 lines=2
@title Passwort Abfrage
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

:Eingabe
cls
echo Passwort: %zeigen%
choice /n /c q0123456789
if errorlevel 11 set zeigen=%zeigen%*&&set passwort=%passwort%9&&goto eingabe
if errorlevel 10 set zeigen=%zeigen%*&&set passwort=%passwort%8&&goto eingabe
if errorlevel 9 set zeigen=%zeigen%*&&set passwort=%passwort%7&&goto eingabe
if errorlevel 8 set zeigen=%zeigen%*&&set passwort=%passwort%6&&goto eingabe
if errorlevel 7 set zeigen=%zeigen%*&&set passwort=%passwort%5&&goto eingabe
if errorlevel 6 set zeigen=%zeigen%*&&set passwort=%passwort%4&&goto eingabe
if errorlevel 5 set zeigen=%zeigen%*&&set passwort=%passwort%3&&goto eingabe
if errorlevel 4 set zeigen=%zeigen%*&&set passwort=%passwort%2&&goto eingabe
if errorlevel 3 set zeigen=%zeigen%*&&set passwort=%passwort%1&&goto eingabe
if errorlevel 2 set zeigen=%zeigen%*&&set passwort=%passwort%0&&goto eingabe
if errorlevel 1 goto check
goto Eingabe

:falsch
cls
echo Passwort falsch!
ping /n 3 localhost>nul
goto Eingabe

:check
if not %passwort%==1234 set zeigen=&&set passwort=&&goto falsch
call c_ladebalcken.bat