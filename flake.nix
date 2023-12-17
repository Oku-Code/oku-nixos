{
  description = "Oku's Flake Configuration";

  inputs = {

    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs-stable";
    };

     nix-colors.url = "github:misterio77/nix-colors";
    
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      desktop = "g31s";
      laptop = "hp14";
    in {
      nixosConfigurations = {
        g31s = nixpkgs.lib.nixosSystem { 
          specialArgs = { inherit inputs; };
          modules = [ ./hosts/g31s/configuration.nix ]; 
        };
      };

      homeConfigurations."oku" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs; };
        modules = [ ./hosts/${desktop}/home.nix ];
      };
    };
}
