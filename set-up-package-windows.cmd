@echo off
color e
echo ----------------------------------------------------------------------------
echo                                  MinhTD                                     
echo ----------------------------------------------------------------------------

cls
:begin
echo 1.install_choco
echo 2.update_choco
echo 3.install_wsl
echo 4.install_dev
echo 5.install_normal
echo 6.Quit
echo.

choice /C 123456 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 6 GOTO exits
IF ERRORLEVEL 5 GOTO install_normal
IF ERRORLEVEL 4 GOTO install_dev
IF ERRORLEVEL 3 GOTO install_wsl
IF ERRORLEVEL 2 GOTO update_choco
IF ERRORLEVEL 1 GOTO install_choco

:install_choco
REM ----------------------------------------------------------------------------
REM                            Install chocolatey                               
REM ----------------------------------------------------------------------------
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
rem RefreshEnv
refreshenv
echo Done!
pause
goto begin


:update_choco
choco upgrade chocolatey -y
echo Done!
pause
goto begin


:install_dev
REM ----------------------------------------------------------------------------
REM                                 Developer                                   
REM ----------------------------------------------------------------------------

choco install git -y
choco install nodejs-lts -y
choco install yarn -y
choco install python -y
choco install docker-desktop -y
choco install dbeaver -y
choco install mongodb-compass -y
choco install postman -y
choco install webstorm -y
choco install vscode -y
echo Done!f
pause
goto begin

:install_normal
REM ----------------------------------------------------------------------------
REM                                  Normal                                     
REM ----------------------------------------------------------------------------

choco install 7zip -y
choco install winrar -y
choco install opera-gx -y
choco install potplayer -y
choco install powertoys -y
choco install internet-download-manager -y
choco install cheatengine --version=7.3 -y
choco install steam -y
choco install sharpkeys -y
choco install chocolateygui -y
choco install telegram -y
choco install everything -y

echo Done!
pause
goto begin

:install_wsl
wsl --install
rem set wsl version 2
wsl --set-version Ubuntu

echo Done!
pause
goto begin

:exits
@exit

echo Done!
Cmd /k
