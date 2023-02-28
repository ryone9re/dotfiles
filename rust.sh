#!/bin/sh

prog="bat deno fnm procs ripgrep zellij"
cargo install $prog

echo 'alias ps="procs"'
alias grep='rg''
