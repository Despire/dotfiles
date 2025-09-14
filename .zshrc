# Path to your oh-my-zsh installation.
export ZSH="/Users/despire/.oh-my-zsh"
# GOPATH
export GOPATH=$HOME/go
# GO BIN
export PATH=$GOPATH/bin:$PATH
# LOCALE
export LC_ALL=en_US.UTF-8
# RUST
export PATH=$HOME/.cargo/bin:$PATH

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Modify prompt to be 'λ'
export PROMPT='%(?:%{%}λ :%{%}λ ) %c $(git_prompt_info)'

ZSH_THEME=""
unalias ls
unset LSCOLORS
unset LS_COLORS

zstyle ':completion:*' list-colors
