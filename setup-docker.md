- Create file .wslconfig "C:\Users\Admin\"

```
notepad .wslconfig
```

```
[wsl2]

# Limits VM memory to use no more than 4 GB, this can be set as whole numbers using GB or MB

memory=8GB

# Sets the VM to use two virtual processors

processors=2

# Sets amount of swap storage space to 8GB, default is 25% of available RAM

swap=2GB

```

```
Get-Service LxssManager | Restart-Service
```
