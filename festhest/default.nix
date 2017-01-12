{ pkgs ? import <nixpkgs> {}
, compiler ? "ghc801"
}:

pkgs.haskell.packages.${compiler}.callPackage ./festhest.nix { }
