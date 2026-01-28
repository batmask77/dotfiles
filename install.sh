#!/usr/bin/env bash
set -e
DOTFILES="$HOME/dotfiles"

link() {
	src="$1"
	dest="$2"

	if [ -e "$dest" ] && [ ! -L "$dest" ] ; then
		mv "$dest" "$dest.bak"
		echo "backup: $dest -> $dest.bak"
	fi

	ln -sfn "$src" "$dest"
	echo "link: $dest -> $src"
}

link "$DOTFILES/vim/vimrc" "$HOME/.vimrc"
