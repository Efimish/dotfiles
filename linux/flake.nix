{
  description = "Efim's nix home-manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager }:
  {
    homeConfigurations.efim-arm = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "aarch64-linux"; };
      modules = [ ./home.nix ];
    };

    homeConfigurations.efim-x86 = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      modules = [ ./home.nix ];
    };
  };
}
