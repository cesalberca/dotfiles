# Aliases
alias gs="git status"
alias gp="git push"
alias ll="ls -FGlAhp"
cd() { builtin cd "$@"; ls; }
alias cd..="cd ../"
alias ..="cd ../"
alias ...="cd ../../"
alias ~="cd ~"
alias c="clear"
trash () { command mv "$@" ~/.Trash; }
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias h="history"

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

PS1="$YELLOW\t $GREEN\u$YELLOW@$DARK_BLUE\h$NO_COLOR:$LIGHT_BLUE \w$GREEN$PINK"'$(__git_ps1 " (%s)")'"\n$NO_COLOR$ $DARK_BLUE> $NO_COLOR"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
