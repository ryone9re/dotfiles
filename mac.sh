#!/bin/sh

prog="binutils clang-format cmake curl diffutils gcc make llvm neovim"

brew install $prog

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
