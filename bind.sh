#!/bin/bash
cd $HOME

# Find all dotfiles except the source control tax
while read -r dotfile ; do
    echo "Linking $dotfile to ~/${dotfile##*/}"
	# Link all dotfiles to the same names in ~/
	ln -sf $dotfile ~/${dotfile##*/}
done < <(find `dirname $0` -mindepth 1 -maxdepth 1 -name '\.*' -not -name '\.git*')

cd -
