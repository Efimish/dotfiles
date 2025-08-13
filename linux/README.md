# Linux

How to install Ubuntu:
[Download Ubuntu Desktop](https://ubuntu.com/download/desktop)

How to install Fedora:
[Download Fedora Workstation](https://fedoraproject.org/workstation/download)

How to install Arch:
[Arch Linux Downloads](https://archlinux.org/download/)
and
[ArchWiki](https://wiki.archlinux.org)
(RTFM)

```sh
# 1) Install Nix (https://nixos.org)
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# 2) Temporarily install chezmoi, init it with my config and apply it
nix-shell -p chezmoi --run "chezmoi init --apply Efimish"

# 3) Install everything from flake.nix
nix-shell -p home-manager --run "home-manager switch --flake ."
```

TODO: replace nix with something else
