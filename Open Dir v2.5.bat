@echo off
color A
:loop
Set dir0=%userprofile%/downloads/
Set /p dir="Open directory or file: Downloads/"
start "" "%dir0%/%dir%" && exit
if exist "%dir0%/%dir%" (
  rem Do nothing, don't delete this line.
) else (
  goto :loop
)
