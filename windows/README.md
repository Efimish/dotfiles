# Windows

How to install Windows and Office:
[Microsoft Activation Scripts](https://massgrave.dev/)

```bash
# 0.5) In case winget is not installed, install it
irm https://winget.pro | iex

# 1) Install chezmoi
winget install -e --id twpayne.chezmoi

# 2) Init chezmoi with my config and apply it
chezmoi init Efimish --apply

# 3) Install everything from packages.txt
Get-Content packages.txt | ForEach-Object { winget install -e --id $_ --accept-source-agreements --accept-package-agreements --no-upgrade }
```
