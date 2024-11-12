{
  description = "namsnath's NixOS flake using Snowfall";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    snowfall-lib = {
      url = "github:snowfallorg/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    let
      lib = inputs.snowfall-lib.mkLib {
          inherit inputs;
          src = ./.;

          snowfall = {
            namespace = "custom";

            meta = {
              name = "namsnath";
              title = "dotfiles";
            };
          };
        };
    in
      lib.mkFlake {
        inherit inputs;
        src = ./.;

        channels-config = {
          allowUnfree = true;
        };

        # overlays = with inputs; {};

        systems.modules.nixos = with inputs; [
          home-manager.nixosModules.home-manager
        ];

        # templates = import ./templates {};
      }
      // {
        self = inputs.self;
      };
}