{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in
  rec {
    nixosConfigurations = {

      #ds22 is an example hostname -> it will work on a host called 'ds22' or you have to evaluate the flake using `nix-rebuild build --flake .#ds22`

      ds22 = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };
    };
  };

}
