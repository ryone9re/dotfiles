#!/bin/sh

prog="alacritty bat binutils clang-format cmake curl dbeaver-community diffutils discord deno exa fd fnm gcc git google-chrome google-japanese-ime hexyl jetbrains-toolbox karabiner-elements kicad llvm make neovim notion procs raycast rupgrep termius the-unarchiver tokei visual-studio-code zellij zoom"

brew install $prog

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
