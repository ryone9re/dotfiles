setopt autocd interactivecomments magicequalsubst promptsubst

autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
setopt hist_expire_dups_first hist_ignore_dups hist_ignore_space hist_verify

if [ -x /usr/bin/tput ] && tput setaf 1 &>/dev/null; then
    PROMPT=$'%F{magenta}┌──(%B%F{cyan}%n🐶%m%b%F{magenta})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{magenta}]\n└─%B%F{cyan}$%b%F{reset} '
else
    PROMPT='%n@%m:%~%# '
fi

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias rm='saferm'

if [ "$TERM_PROGRAM" != "vscode" ]; then
    type eza &>/dev/null && alias ls='eza'
    type bat &>/dev/null && alias cat='bat'
    type procs &>/dev/null && alias ps='procs'
    type rg &>/dev/null && alias grep='rg'
    type fd &>/dev/null && alias find='fd'
    type hexyl &>/dev/null && alias od='hexyl'
    type tokei &>/dev/null && alias wc='tokei'
fi

[ -f "$HOME/.orbstack/shell/init.zsh" ] && source "$HOME/.orbstack/shell/init.zsh"

eval "$(mise activate zsh)"
