@echo off
color A
:loop
Set /p dir="Open directory or file: Downloads/"
start "" "%userprofile%/downloads/%dir%"
if exist "%userprofile%/downloads/%dir%" (
 rem Do nothing, don't delete this line.
) else (
  goto :loop
)
