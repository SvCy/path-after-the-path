@echo off
color A
:loop
Set dir0=%userprofile%/downloads/
Set /p dir="Open directory or file: Downloads/"
start "" "%dir0%/%dir%"
if exist "%dir0%/%dir%" (
 rem Do nothing, don't delete this line.
) else (
  goto :loop
)
rem issues: if not included file extension cmd doesn't close, space closes cmd, empty enter hits the last path (here wrong path). simply use the og script.