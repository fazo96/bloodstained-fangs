{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    typst # compiling the book
    libwebp # image compression
    imagemagick # image manipulation
    netlify-cli # deploys
  ];
}
