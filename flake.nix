{
  inputs = {
    nixpkgs.url = github:nixos/nixpkgs;
  };

  outputs = { self, nixpkgs, ... }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShell.${system} = import ./shell.nix { inherit pkgs; };
  };
}
