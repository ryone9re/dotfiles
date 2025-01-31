#!/bin/sh -eu

BROWSER="google-chrome"
PROG="appcleaner discord haskell-stack karabiner-elements monitorcontrol notion orbstack raycast rectangle slack the-unarchiver visual-studio-code wezterm"
RUST_TOOLS="bat eza fd hexyl procs tokei ripgrep"

brew install $BROWSER $PROG $RUST_TOOLS

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo softwareupdate --install-rosetta

brew install google-japanese-ime
