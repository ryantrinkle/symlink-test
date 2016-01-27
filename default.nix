{ nixpkgs ? import <nixpkgs> {} }:
nixpkgs.runCommand "symlink-test" {
  buildCommand = ''
    mkdir "$out"
    ln -s "$a" "$out/a"
  '';
  a = ./a;
} ""
