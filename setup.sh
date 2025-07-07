#!/bin/sh -eu

ln -snfv ${PWD}/.zprofile ~/.zprofile
ln -snfv ${PWD}/.zshrc ~/.zshrc
ln -snfv ${PWD}/.wezterm.lua ~/.wezterm.lua

if [ ! -d ~/.config/mise ]; then
    mkdir -p ~/.config/mise
fi
ln -snfv ${PWD}/mise-config.toml ~/.config/mise/config.toml

if [ ! -d ~/Library/Application\ Support/Code/User ]; then
    mkdir -p ~/Library/Application\ Support/Code/User
fi
ln -snfv ${PWD}/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
