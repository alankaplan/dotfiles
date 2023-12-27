let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  packages = with pkgs; [
    neovim
    firefox
    git
    python3
    python3Packages.numpy
    python3Packages.matplotlib
    xfe
    geeqie
  ];
  }
