#!/bin/sh -eu

ln -snfv ${PWD}/.zprofile ~/.zprofile
ln -snfv ${PWD}/.zshrc ~/.zshrc
ln -snfv ${PWD}/.wezterm.lua ~/.wezterm.lua
ln -snfv ${PWD}/mise-config.toml ~/.config/mise/config.toml

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
