# Dotfiles 🔧

For managing my dotfiles I use
[Chezmoi](https://chezmoi.io/)

## Commands

```bash
# Init chezmoi with my config
chezmoi init Efimish

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

## MacOS 💻

```bash
# install chezmoi
brew install chezmoi
# install everything from Brewfile
brew bundle
# save Brewfile
brew bundle dump --describe
```

## Windows 🪟

```ps1
winget install twpayne.chezmoi
winget install Helix.Helix
```

## Raspberry Pi 🥧

```bash
sh <(curl -L https://nixos.org/nix/install) --daemon
nix-env -i chezmoi
nix-env -i fish
nix-env -i helix
nix-env -i zellij
```

## Other

### Zsh files execution order

`.zshenv` → [`.zprofile` if login] → [`.zshrc` if interactive] → [`.zlogin` if login] → [`.zlogout` sometimes].
