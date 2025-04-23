export PATH="$PATH:/$HOME/.local/bin"

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
fi

export PATH="$PATH:/$HOME/.ghcup/bin"
export PATH="$PATH:/Applications/IntelliJ IDEA CE.app/Contents/MacOS"
