#!/bin/sh -eu

BROWSER="google-chrome"
PROG="appcleaner cmd-eikana discord fzf google-japanese-ime k1LoW/tap/git-wt mise monitorcontrol notion orbstack raycast rectangle slack the-unarchiver visual-studio-code wezterm"
RUST_TOOLS="bat difftastic eza fd hexyl procs tokei ripgrep"

brew install $BROWSER $PROG $RUST_TOOLS
mise install
