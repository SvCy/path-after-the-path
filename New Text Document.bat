@echo off
color A
:loop
Set /p dir="Open directory or file: Downloads/"
rem Check if the directory or file exists
if not exist "%userprofile%/downloads/%dir%" (
  echo Invalid directory or file, please try again
  goto loop
)
rem Open the directory or file
start "" "%userprofile%/Downloads/%dir%"
