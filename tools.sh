#!/bin/bash

prog="binutils build-essential clangd clang-format cmake curl diffutils lldb llvm neovim pkg-config python3-pip"

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update -y
sudo apt upgrade -y
sudo apt install $prog -y
