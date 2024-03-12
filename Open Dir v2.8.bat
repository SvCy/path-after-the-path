@echo off
color A
:loop
Set dir0=%userprofile%/downloads/
Set /p dir="Open directory or file: Downloads/"
if "%dir%"=="" (
  start "" "%dir0%"
  exit
)
rem Trim leading and trailing spaces
for /f "tokens=*" %%i in ("%dir%") do set dir=%%i
rem Check if the trimmed input is empty or if the path does not exist
if not "%dir%"=="" (
start "" "%dir0%\%dir%" && exit
  if exist "%dir0%\%dir%" (
  rem don't delete this line
    
  ) else (
    echo Invalid path. Please try again.
    goto :loop
  )
    ) else (
    echo Invalid path. Please try again.
    goto :loop
  )
