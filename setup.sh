#!/bin/sh -eu

ln -snfv ${PWD}/.zprofile ~/.zprofile
ln -snfv ${PWD}/.zshrc ~/.zshrc
ln -snfv ${PWD}/.wezterm.lua ~/.wezterm.lua
ln -snfv ${PWD}/mise-config.toml ~/.config/mise/config.toml
ln -snfv ${PWD}/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
