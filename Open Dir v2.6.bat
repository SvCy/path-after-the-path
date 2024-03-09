@echo off
color A
:loop
Set dir0=%userprofile%/downloads/
Set dir=
Set /p dir="Open directory or file: Downloads/"
if "%dir%"=="" (
  start "" "%dir0%"
  goto :loop
)
start "" "%dir0%/%dir%" && exit
if exist "%dir0%/%dir%" (
  rem Do nothing, don't delete this line.
) else (
  echo Invalid path. Please try again.
  goto :loop
)
