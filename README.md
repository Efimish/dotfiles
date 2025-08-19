# Dotfiles 🔧

For managing my dotfiles I use
[chezmoi](https://chezmoi.io/)

## Commands

```bash
# Init chezmoi with my config
chezmoi init Efimish [--ssh]

# Init chezmoi and apply
chezmoi init Efimish [--ssh] --apply

# Apply config
chezmoi apply

# Start tracking file
chezmoi add $FILE

# Get into chezmoi directory (~/.local/share/chezmoi)
chezmoi cd

# Push and pull changes - use git
git push
git pull
```

## Zsh files execution order

`.zshenv` → [`.zprofile` if login] → [`.zshrc` if interactive] → [`.zlogin` if login] → [`.zlogout` sometimes].
