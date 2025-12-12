
{ pkgs ? import <nixpkgs> {} }:

let
  pythonPackages = with pkgs.python311Packages; [
    python-dotenv
    pip
  ];

in pkgs.mkShell rec {
  buildInputs = with pkgs; [
    python313
    python313Packages.virtualenv
    python313Packages.pillow
    zlib
  ];
}
