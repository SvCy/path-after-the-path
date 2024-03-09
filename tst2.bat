@echo off
setlocal enableextensions enabledelayedexpansion
color A
rem Set the variable for the working directory
set workdir=%userprofile%/downloads
:loop
Set /p dir="Open directory or file: Downloads/"
start "" "!workdir!/%dir%"
if exist "!workdir!/%dir%" (
  rem Do nothing
) else (
  goto :loop
)
