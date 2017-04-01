export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# Aliases

alias gs="git status"
alias ll="ls -FGlAhp"
cd() { builtin cd "$@"; ls; }
alias cd..="cd ../"
alias ..="cd ../"
alias ...="cd ../../"
alias ~="cd ~"
alias c="clear"
trash () { command mv "$@" ~/.Trash ; }

# Colors

RED="\[\033[31m\]"
GREEN="\[\033[32m\]"
YELLOW="\[\033[33m\]"
DARK_BLUE="\[\033[34m\]"
PINK="\[\033[35m\]"
LIGHT_BLUE="\[\033[36m\]"
NO_COLOR="\[\033[0m\]"

source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash

PS1="$YELLOW[\t] $GREEN\u$YELLOW@$DARK_BLUE\h$NO_COLOR:$LIGHT_BLUE \w$GREEN$PINK"'$(__git_ps1 " (%s)")'"\n$NO_COLOR$ $RED>$GREEN>$LIGHT_BLUE> $NO_COLOR"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
