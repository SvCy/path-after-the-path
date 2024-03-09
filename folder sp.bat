@echo off
color A
:loop
set dir1=%userprofile%/downloads/
Set /p dir2="Open directory or file: Downloads/"
Set dir="%dir1% %dir2%"
start "" "%dir%"
if exist "%dir%" (
) else (
  goto :loop
)
