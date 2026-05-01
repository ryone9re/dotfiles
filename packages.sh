#!/bin/sh -eu

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

APPS="
cmd-eikana
discord
google-chrome
google-japanese-ime
monitorcontrol
orbstack
raycast
rectangle
slack
the-unarchiver
visual-studio-code
wezterm
"

brew install mise
brew install --cask $APPS
