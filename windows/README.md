# Windows

How to install Windows and Office:
[Microsoft Activation Scripts](https://massgrave.dev/)

```bash
# 1) Install chezmoi
winget install -e --id twpayne.chezmoi

# 2) Init chezmoi with my config and apply it
chezmoi init Efimish --apply

# 3) Install everything from packages.json
winget import -i packages.json --no-upgrade

# 4) Later save package list to packages.json
winget export -o packages.json
```
