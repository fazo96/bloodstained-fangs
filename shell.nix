{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    typst # compiling the book
    libwebp # image compression
    netlify-cli # deploys
  ];
}
