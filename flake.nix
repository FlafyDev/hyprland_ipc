{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils = {
      url = "github:numtide/flake-utils";
    };
    dart-flutter = {
      url = "github:flafydev/dart-flutter-nix";
      # url = "path:/mnt/general/repos/flafydev/dart-flutter-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    flake-utils,
    dart-flutter,
    ...
  }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          dart-flutter.overlays.default
        ];
      };
    in {
      devShell = pkgs.mkShell {
        packages = with pkgs; [
          dart
          # deps2nix
        ];
      };
    });
}
