# my settings
# local binary path
export PATH="$PATH:$HOME/.local/bin"

# rust settings
. "$HOME/.cargo/env"

# rust tool alias
# cargo install exa bat procs ripgrep fd-find hexyl tokei deno zellij
alias ls='exa'
alias cat='bat'
alias ps='procs'
alias grep='rg'
alias find='fd'
alias od='hexyl'
alias wc='tokei'

# zellij auto start
eval "$(zellij setup --generate-auto-start zsh)"

# volta settings
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# clangd settings
export PATH="$PATH:/usr/local/opt/llvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
