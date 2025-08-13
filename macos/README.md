# MacOS

How to erase MacOS:
[Mac User Guide](https://support.apple.com/guide/mac-help/erase-your-mac-mchl7676b710/mac)

```bash
# 1) Install Homebrew (https://brew.sh/)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2) Install Chezmoi
brew install chezmoi

# 3) Init chezmoi with my config and apply it
chezmoi init Efimish --apply

# 4) Install everything from Brewfile
brew bundle

# 5) Later save package list to Brewfile
brew bundle dump --describe
```
