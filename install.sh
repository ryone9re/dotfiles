#!/bin/sh
set -u

for f in .??*; do
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitmodules" ] && continue
	ln -snfv ${PWD}/"$f" ~/
done

mkdir -p ${HOME}/.config
ln -snfv ${PWD}/nvim ${HOME}/.config/nvim
ln -snfv ${PWD}/zellij ${HOME}/.config/zellij
