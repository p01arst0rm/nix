#!/usr/bin/env sh
# This script is meant to be used by `doc/manual/meson.build` to help build the documentation.

input="$1"
newCliSummaryFile="$2/SUMMARY.md"


cat $input | while IFS= read line; do
    if [[ $line = @manpages@ ]]; then
        cat $newCliSummaryFile
    else
        echo "$line";
    fi;
done
