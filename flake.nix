{
  description = "system configuration";
  inputs = {
    nixpkgs = {
      url = "nixpkgs/nixos-24.05";
    };
    unstable = {
      url = "nixpkgs/nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      unstable,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-unstable = unstable.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        FilLAP = lib.nixosSystem {
          inherit system;
          specialArgs = {
            pkgs = import nixpkgs {
              inherit system;
              config = {
                allowUnfree = true;
              };
            };
            inherit pkgs-unstable;
          };
          modules = [ ./configuration.nix ];
        };
      };
      homeConfigurations = {
        filip = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ];
          extraSpecialArgs = {
            inherit pkgs-unstable;
          };

        };
      };
    };
}
