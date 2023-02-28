#!/bin/sh

prog="bat deno fnm procs zellij"
cargo install $prog

echo 'eval "$(fnm env --use-on-cd)"' >> ~/.bashrc
