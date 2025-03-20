{
  description = "Efim's nix home-manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, systems, home-manager }:
  let
    eachSystem = nixpkgs.lib.genAttrs (import systems);
  in
  {
    packages = eachSystem (system:
    {
      homeConfigurations.efim = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { inherit system; };
        modules = [ ./home.nix ];
      };
    });
  };
}
