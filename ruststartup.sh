#!/bin/bash

prog="exa bat deno fnm procs ripgrep fd-find hexyl tokei zellij"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source ~/.bashrc

cargo install $prog
