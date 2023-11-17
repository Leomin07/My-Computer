1. Install

- [Set-ExecutionPolicy](./fix-windows.md)
- Open CMD rule Admin and run code:

```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

2. Upgrade chocolatey

```
choco upgrade chocolatey
```
