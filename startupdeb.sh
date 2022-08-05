#!/bin/bash

prog="binutils build-essential curl diffutils lldb llvm neovim"

yes | sudo add-apt-repository ppa:neovim-ppa/unstable
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo apt install $prog
