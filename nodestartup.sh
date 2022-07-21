#!/bin/bash

curl https://get.volta.sh | bash

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
