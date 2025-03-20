{ config, pkgs, ... }:

{
  # Enable on non-NixOS systems
  targets.genericLinux.enable = true;
  # Don't change
  home.stateVersion = "24.11";

  home.username = "efim";
  home.homeDirectory = "/home/efim";

  home.packages = with pkgs; [
    git
    chezmoi
    fish
    helix
    zellij
    lazygit
    caddy
    podman
    bun
    rustup
    uv
  ];

  programs.home-manager.enable = true;
}
