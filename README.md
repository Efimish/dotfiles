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
# install chezmoi
winget install --id=twpayne.chezmoi -e
# install everything from packages.json
winget import -i packages.json
# save packages.json
winget export -o packages.json
```

## Raspberry Pi 🥧

```bash
# install nix
sh <(curl -L https://nixos.org/nix/install) --daemon
# temporarily install chezmoi
nix-shell -p chezmoi --run "chezmoi init --apply Efimish"
# install everything from flake.nix
nix profile install
```

## Other

### Zsh files execution order

`.zshenv` → [`.zprofile` if login] → [`.zshrc` if interactive] → [`.zlogin` if login] → [`.zlogout` sometimes].
