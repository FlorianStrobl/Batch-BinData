@echo off
@mode con cols=45 lines=5
@title Naricht schreiben
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

del h_Naricht.txt
cls
set /p txt=Text:
(
echo %txt%
)>>h_Naricht.txt

cls
echo Neuer Text: %txt%
ping /n 3 localhost >NUL
call e_Naricht.bat