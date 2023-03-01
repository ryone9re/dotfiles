#!/bin/sh

prog="binutils build-essential clangd clang-format cmake curl diffutils lldb llvm neovim pkg-config python3-pip zsh zsh"

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update -y
sudo apt upgrade -y
sudo apt install $prog -y

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
