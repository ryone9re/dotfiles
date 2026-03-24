#!/bin/sh -eu

ln -snfv ${PWD}/.zsh ~/.zsh
ln -snfv ${PWD}/.zprofile ~/.zprofile
ln -snfv ${PWD}/.zshrc ~/.zshrc
ln -snfv ${PWD}/.wezterm.lua ~/.wezterm.lua

if [ ! -d ~/.config/mise ]; then
    mkdir -p ~/.config/mise
fi
ln -snfv ${PWD}/.config/mise/config.toml ~/.config/mise/config.toml

if [ ! -d ~/.config/git ]; then
    mkdir -p ~/.config/git
fi
ln -snfv ${PWD}/.config/git/ignore ~/.config/git/ignore

if [ ! -d ~/Library/Application\ Support/Code/User ]; then
    mkdir -p ~/Library/Application\ Support/Code/User
fi
ln -snfv ${PWD}/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
