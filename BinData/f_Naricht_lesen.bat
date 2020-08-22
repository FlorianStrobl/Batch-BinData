@echo off
@mode con cols=27 lines=3
@title Naricht lesen
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

FOR /F %%A IN (h_Naricht.txt) DO SET txt=%%A
echo %txt%
pause >NUL
call e_Naricht.bat