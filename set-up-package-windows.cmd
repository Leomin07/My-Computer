@echo off
color e
echo ----------------------------------------------------------------------------
echo                                  MinhTD                                     
echo ----------------------------------------------------------------------------

REM ----------------------------------------------------------------------------
REM                            Set-ExecutionPolicy                              
REM ----------------------------------------------------------------------------
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

REM ----------------------------------------------------------------------------
REM                            Install chocolatey                               
REM ----------------------------------------------------------------------------

powershell @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco upgrade chocolatey -y

echo Now chocolatey should be ready and we can go ahead
echo .
pause

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
choco install sublimetext3 -y
choco install vscode -y

REM ----------------------------------------------------------------------------
REM                                  Normal                                     
REM ----------------------------------------------------------------------------

choco install brave -y
choco install googlechrome -y
choco install potplayer -y
choco install wrap -y
choco install powertoys -y
choco install internet-download-manager -y
choco install microsoft-windows-terminal -y
choco install cheatengine --version=7.3 -y
choco install steam -y
choco install sharpkeys -y
choco install chocolateygui -y
choco install telegram -y
choco install everything -y

echo Done!
Cmd /k