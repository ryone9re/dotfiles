#!/bin/sh -eu

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

BROWSER="google-chrome"
PROG="appcleaner cmd-eikana discord fzf google-japanese-ime k1LoW/tap/git-wt mise monitorcontrol notion orbstack raycast rectangle slack the-unarchiver visual-studio-code wezterm"
RUST_TOOLS="bat difftastic eza fd hexyl procs tokei ripgrep"

brew install $BROWSER $PROG $RUST_TOOLS
mise install
