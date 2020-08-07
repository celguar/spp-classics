mode con: cols=40 lines=30
@echo off
SET NAME=SPP Server Launcher
TITLE %NAME%
set mainfolder=%CD%

if NOT exist "%mainfolder%\launcher.bat" goto not_installed
:start_server
cd "%mainfolder%\SPP_Server"
Launcher.bat
exit

:not_installed
echo.
echo  %NAME% is not installed
echo.
echo  Please run Server_Update.bat
more < "%mainfolder%\Git\robo_logo.txt"
echo.
pause
exit