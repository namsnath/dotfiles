{
  description = "";

  # Inputs (git repos)
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  # How to use the inputs and build system
  outputs = {
    self,
    nixpkgs,
    ...,
  }:
  let
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      # hostname
      dell = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}