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
link "$DOTFILES/git/gitconfig" "$HOME/.gitconfig"
link "$DOTFILES/sh/my_zshrc" "$HOME/.my_zshrc"

myzshrc='source ~/.my_zshrc'
grep -qxF "$myzshrc" "$HOME/.zshrc" || echo "$myzshrc" >> "$HOME/.zshrc"


