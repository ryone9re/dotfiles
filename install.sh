#!/bin/bash

set -u

for f in .??*; do
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitmodules" ] && continue

	ln -snfv ${PWD}/"$f" ~/
done
