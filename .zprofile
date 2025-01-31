export PATH="$PATH:/$HOME/.local/bin"

if type brew &>/dev/null; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

export PATH="$PATH:/$HOME/.ghcup/bin"