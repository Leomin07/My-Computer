1. PowerShell execution policy is required to be one of: Unrestricted, RemoteSigned or ByPass to execute the installer.

```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

2. Run this command from a non-admin PowerShell to install scoop with default configuration, scoop will be install to C:\Users\<YOUR USERNAME>\scoop.

```
irm get.scoop.sh | iex
```
