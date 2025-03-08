# Dotfiles 🔧

## Installing

### Install [Chezmoi](https://chezmoi.io/)

```bash
brew install chezmoi
winget install twpayne.chezmoi
pacman -S chezmoi
sudo snap install chezmoi --classic 
```

### Pull dotfiles

```bash
chezmoi init Efimish
```

## Commands

```bash
# Start tracking file
chezmoi add $FILE

# Get into chezmoi directory (~/.local/share/chezmoi)
chezmoi cd

# View changes before applying
chezmoi diff

# Apply changes
chezmoi apply

# Push and pull changes - use git
git push
git pull
```

## MacOS apps 💻

My dotfiles include `Brewfile` for installing all MacOS applications seamlessly

```bash
# install
brew bundle
# save current
brew bundle dump --describe
```

## Other

### Zsh files execution order

`.zshenv` → [`.zprofile` if login] → [`.zshrc` if interactive] → [`.zlogin` if login] → [`.zlogout` sometimes].
