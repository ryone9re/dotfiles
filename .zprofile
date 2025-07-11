export PATH="$PATH:/$HOME/.local/bin"

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
fi
