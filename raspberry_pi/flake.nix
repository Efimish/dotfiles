{
  description = "Raspberry Pi Nix Flake for installing packages";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    system = "aarch64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system}.default = pkgs.buildEnv {
      name = "my packages";
      paths = with pkgs; [
        chezmoi
        fish
        helix
        zellij
      ];
    };
  };
}
