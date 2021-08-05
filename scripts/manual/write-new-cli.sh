#!/usr/bin/env sh
# This script is meant to be used by `doc/manual/meson.build` to help build the documentation.

nixBinary="$1"
newCliFile="$2"
generateManPageNix="$3"
output="$4"

# `--write-to` requires the file to *NOT* be present.
rm -Rf $output

$nixBinary eval \
    --experimental-features nix-command \
    -I nix/corepkgs=corepkgs \
    --store dummy:// \
    --impure \
    --raw \
    --write-to $output \
    --expr "import $generateManPageNix (builtins.fromJSON (builtins.readFile $newCliFile))"
