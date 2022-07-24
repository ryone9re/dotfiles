#!/bin/bash

prog="exa bat procs ripgrep fd-find hexyl tokei zellij"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

tmp=`echo $SHELL`
sh=`echo ${tmp: -4:4}`

if [ $sh == "bash" ]; then
	source ~/.bashrc
fi

if [ $sh == "/zsh" ]; then
	source ~/.zshrc
fi

if [ $sh == "fish" ]; then
	source ~/.fishrc
fi

cargo install $prog
