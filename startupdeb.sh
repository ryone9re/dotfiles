#!/bin/bash

prog="binutils build-essential clangd clang-format cmake curl diffutils lldb llvm neovim pkg-config python3-pip"

yes | sudo add-apt-repository ppa:neovim-ppa/unstable
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo apt install $prog
