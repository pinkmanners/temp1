{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
  };
  outputs = { self, nixpkgs, home-manager, hyprland, ... }@inputs:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.${system};
    in
  {
  nixosConfigurations = {
    T450 = lib.nixosSystem {
      inherit system;
      specialArgs = { inherit inputs ; };
      modules = [
        ./configuration.nix
      ];
     };
    };
  homeConfigurations = {
    "jayden" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [
        ./home.nix
      ];
    };
  };
 };
}
