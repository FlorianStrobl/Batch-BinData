@echo off
@mode con cols=28 lines=2
@title ...
FOR /F %%A IN (h_color.txt) DO SET color=%%A
@color %color%

set index=0

:mainLoop
set /a index=%index%+1
if /i %index%==4 call c_ladebalcken_zahlen.bat
cls
echo �                �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ��               �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ���              �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ����             �
ping -n 1.5 127.0.0.1>NUL
echo.
echo �����            �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ������           �
ping -n 1.5 127.0.0.1>NUL
echo.
echo �������          �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ��������         �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ���������        �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ����������       �
ping -n 1.5 127.0.0.1>NUL
echo.
echo �����������      �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ������������     �
ping -n 1.5 127.0.0.1>NUL
echo.
echo �������������    �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ��������������   �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ��������������� �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ���������������� �
ping -n 1.5 127.0.0.1>NUL
echo.
echo ������������������
ping -n 1.5 127.0.0.1>NUL
goto mainLoop