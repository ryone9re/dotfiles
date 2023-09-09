#!/bin/sh

prog="alacritty bat binutils clang-format cmake curl dbeaver-community diffutils discord deno exa fd fnm gcc git google-chrome hexyl jetbrains-toolbox karabiner-elements kicad llvm make neovim notion procs raycast ripgrep termius the-unarchiver tokei visual-studio-code zellij zoom zsh-completions"

brew install $prog

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
