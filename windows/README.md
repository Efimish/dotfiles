# Windows

How to install Windows and Office:
[Microsoft Activation Scripts](https://massgrave.dev/)

```bash
# Run this in powershell
# 0.5) In case winget is not installed, install it
irm https://winget.pro | iex

# 1) Install git and chezmoi
winget install -e --id Git.Git
winget install -e --id twpayne.chezmoi

# 2) Init chezmoi with my config and apply it
chezmoi init Efimish --apply

# 3) Install everything from packages.txt
cmd /c "for /f %i in (packages.txt) do winget install -e --id %i --accept-source-agreements --accept-package-agreements --no-upgrade"
```

## WSL

```bash
# Enable WSL (run as administrator)
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Restart computer
shutdown /r /t 0

# Install WSL Arch
wsl --install -d archlinux
wsl --set-default archlinux
```
