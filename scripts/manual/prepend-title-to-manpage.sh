#!/usr/bin/env sh
# This script is meant to be used by `doc/manual/meson.build` to help build the documentation.

printf "Title: %s\n\n" "${1}.${2}"
cat $3
