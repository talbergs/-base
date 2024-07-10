{
  description = ''
    outer-most environment shell - run with `nix develop`
  '';

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        logo = ./logo.png; # will be copied to store automatically here.
        derivations = import ./derivations.nix pkgs;
      in {
        devShells.default = pkgs.mkShell {
          packages = (import ./packages.nix pkgs) ++ [ derivations.icat ];
          shellHook = ''
            ${pkgs.lib.getExe derivations.icat} --width 40 ${logo}
            ${
              pkgs.lib.getExe pkgs.cowsay
            } "Base environment is set up! It has everrything there is."
          '';
        };

        # packages.default = derivation {
        #   inherit system name src;
        #   builder = "${pkgs.bash}/bin/bash";
        #   args = [ "-c" "echo foo > $out" ];
        # };

      });
}
