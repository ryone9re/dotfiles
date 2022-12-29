#!/bin/bash

prog="exa bat procs ripgrep fd-find hexyl tokei zellij fnm"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install $prog
