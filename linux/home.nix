{ config, pkgs, ... }:

{
  home.username = "efim";
  home.homeDirectory = "/home/efim";

  home.stateVersion = "24.11";

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
