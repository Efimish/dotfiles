{
  description = "Linux Nix Flake for installing packages";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager }:
  let
    system = "x86_64-linux";
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
          ];

          programs.fish.enable = true;
        }
      ];
    };
  };
}
