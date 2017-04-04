export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/Users/calberca/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias gs="git status"
alias ll="ls -FGlAhp"
cd() { builtin cd "$@"; ls; }
alias cd..="cd ../"
alias ~="cd ~"
alias c="clear"
trash () { command mv "$@" ~/.Trash; }
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
