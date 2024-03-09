@echo off
color A
:loop
Set dir0=%userprofile%/downloads/
Set dir=
Set /p dir="Open directory or file: Downloads/"
if "%dir%"=="" (
  start "" "%dir0%"
  exit
)
rem Trim leading and trailing spaces
for /f "tokens=*" %%i in ("%dir%") do set dir=%%i
rem Check if the trimmed input is empty or if the path does not exist
if not "%dir%"=="" (
  if exist "%dir0%\%dir%" (
    start "" "%dir0%\%dir%" && exit
  ) else (
    echo Invalid path. Please try again. in %dir0%
    goto :loop
  )
) else (
  echo Invalid path/file. Please enter a valid path. in %dir0%
  goto :loop
)
