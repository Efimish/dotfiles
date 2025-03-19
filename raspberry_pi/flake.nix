{
  description = "Raspberry Pi Nix Flake for installing packages";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager }:
  let
    system = "aarch64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    homeConfigurations.efim = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;

      modules = [
        {
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

          home.stateVersion = "24.11";

          programs.home-manager.enable = true;
          programs.fish.enable = true;
        }
      ];
    };
  };
}
