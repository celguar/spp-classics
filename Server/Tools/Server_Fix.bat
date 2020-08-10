@echo off
SET NAME=SPP Updater
TITLE %NAME%
set mainfolder=%CD%

taskkill /f /im realmd.exe
taskkill /f /im mangosd.exe
taskkill /f /im spp-httpd.exe
taskkill /f /im node.exe

:repack
set name=SPP - Classics Collection
set installpath=SPP_Server
set branch=master
cls
echo #########################################################
echo # WARNING!                                              #
echo # All your changes will be undone, including:           #
echo # Accounts, characters, bots, settings, db changes!     #
echo #                                                       #
echo # Back up settings and characters before doing this!    #
echo #########################################################
echo.
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" exit
goto start_restore

:start_restore
cls
if not exist "%mainfolder%\%installpath%\launcher.bat" goto not_installed_error
cd "%mainfolder%\%installpath%"
..\git\cmd\git.exe reset --hard
echo.
pause
exit

:not_installed_error
cls
echo Looks like %name% repack is not installed.
echo Please use "Server_Update.bat" to install it first.
echo.
more < "%mainfolder%\Git\robo_logo.txt"
pause
goto menu