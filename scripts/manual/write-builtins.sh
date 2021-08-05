#!/usr/bin/env sh
# This script is meant to be used by `doc/manual/meson.build` to help build the documentation.

nixBinary="$1"
builtinsJsonFile="$2"
generateBuiltinsNix="$3"
prefixFile="$4"
suffixFile="$5"

cat $prefixFile

$nixBinary eval \
    --experimental-features nix-command \
    -I nix/corepkgs=corepkgs \
    --store dummy:// \
    --impure \
    --raw \
    --expr "import $generateBuiltinsNix (builtins.fromJSON (builtins.readFile $builtinsJsonFile))"

cat $suffixFile
