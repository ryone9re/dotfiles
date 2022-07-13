#!/bin/bash

tmp=`echo $SHELL`
sh=`echo ${tmp: -4:4}`

if [ $sh == "bash" ]; then
	shell="bash"
	rc=".bashrc"
fi

if [ $sh == "/zsh" ]; then
	shell="zsh"
	rc=".zshrc"
fi

if [ $sh == "fish" ]; then
	shell="fish"
	rc=".fishrc"
fi

set -u

for f in .??*; do
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitmodules" ] && continue

	if [ "$f" = ".bashrc" ]; then
		if [ "$shell" = "bash" ]; then
			ln -snfv ${PWD}/"$f" ~/
		else
			continue
		fi
	fi

	if [ "$f" = ".zshrc" ]; then
		if [ "$shell" = "zsh" ]; then
			ln -snfv ${PWD}/"$f" ~/
		else
			continue
		fi
	fi

	if [ "$f" = ".fishrc" ]; then
		if [ "$shell" = "fish" ]; then
			ln -snfv ${PWD}/"$f" ~/
		else
			continue
		fi
	fi

	ln -snfv ${PWD}/"$f" ~/
done

mkdir -p ${HOME}/.config/nvim
ln -snfv ${PWD}/nvim/* ${HOME}/.config/nvim
