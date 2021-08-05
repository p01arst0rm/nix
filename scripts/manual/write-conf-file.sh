#!/usr/bin/env sh
# This script is meant to be used by `doc/manual/meson.build` to help build the documentation.

nixBinary="$1"
confJsonFile="$2"
generateOptionsNix="$3"
prefixFile="$4"


cat $prefixFile

$nixBinary eval \
    --experimental-features nix-command \
    -I nix/corepkgs=corepkgs \
    --store dummy:// \
    --impure \
    --raw \
    --expr "import $generateOptionsNix (builtins.fromJSON (builtins.readFile $confJsonFile))"
