# Dotfiles

## Commands

```bash
# Install chezmoi on a new machine
chezmoi init Efimish/dotfiles

# Get into chezmoi directory
# Default location: ~/.local/share/chezmoi
chezmoi cd

# Push and pull changes
git push
git pull

# Pull and apply changes
chezmoi update
```

## MacOS

```bash
brew bundle
```

## Zsh files execution order

`.zshenv` → [`.zprofile` if login] → [`.zshrc` if interactive] → [`.zlogin` if login] → [`.zlogout` sometimes].
