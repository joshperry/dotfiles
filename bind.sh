#!/bin/bash

# Find all dotfiles except the source control tax
while read -r dotfile ; do
    echo "Linking $dotfile to ~/${dotfile##*/}"
	# Link all dotfiles to the same names in ~/
	ln -sf $dotfile ~/${dotfile##*/}
done < <(find $PWD -depth 1 -name '\.*' -not -name '\.git*')
