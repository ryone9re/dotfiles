#!/bin/sh -eu

PROG="appcleaner notion orbstack raycast rectangle karabiner-elements discord slack google-japanese-ime the-unarchiver visual-studio-code wezterm"
RUST_TOOLS="eza bat procs ripgrep fd-find hexyl tokei"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install $PROG $RUST_TOOLS
