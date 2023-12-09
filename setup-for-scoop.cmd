@echo off
color e
echo ----------------------------------------------------------------------------
echo                                  MinhTD                                     
echo ----------------------------------------------------------------------------

powershell iwr -useb get.scoop.sh | iex

REM ----------------------------------------------------------------------------
REM                                 Developer                                   
REM ----------------------------------------------------------------------------

scoop bucket add main
scoop bucket add extras
scoop install main/python
scoop install main/git
scoop install main/nodejs
scoop install main/yarn
scoop install extras/dbeaver
scoop install extras/mongodb-compass
scoop install extras/postman
scoop install extras/vscode
scoop install extras/sublime-text

REM ----------------------------------------------------------------------------
REM                                  Normal                                     
REM ----------------------------------------------------------------------------

scoop install extras/brave
scoop install extras/googlechrome
scoop install extras/potplayer
scoop install extras/powertoys
scoop install extras/windows-terminal
scoop install extras/everything
scoop install versions/steam
scoop install extras/telegram
scoop install extras/sharpkeys
scoop install extras/cheat-engine

echo Done!
Cmd /k