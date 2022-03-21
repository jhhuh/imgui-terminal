{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ pkg-config cmake ];
  buildInputs = with pkgs; [ SDL2 glfw xorg.libXau xorg.libXdmcp ];
}
