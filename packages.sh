#!/bin/sh -eu

BROWSER="google-chrome"
PROG="appcleaner notion orbstack raycast rectangle karabiner-elements discord slack the-unarchiver visual-studio-code wezterm"
RUST_TOOLS="eza bat procs ripgrep fd hexyl tokei"

brew install $BROWSER $PROG $RUST_TOOLS
