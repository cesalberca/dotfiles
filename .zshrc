export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)

plugins=(git yarn)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/python@2/bin:$PATH"
export EDITOR="/usr/local/Cellar/micro/1.3.3/bin/micro"

mkdir -p ~/.nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Aliases
alias gl="git log --all --decorate --oneline --graph"
alias gs="git status"
alias ll="ls -FGlAhp"
cd() { builtin cd "$@"; ls; }
alias cd..="cd ../"
alias ~="cd ~"
alias c="clear"
trash () { command mv "$@" ~/.Trash; }
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias work="cd ~/Workspace"
alias tmp="cd ~/Tmp"

# Functions
gif_opt () {
	mkdir min;
	for f in *.gif; do
		gifsicle --resize-fit-width $1 -i "$f" > "min/${f%.gif}.gif"
	done;
} 

# Disable sharing history in iTerm2
unsetopt inc_append_history
unsetopt share_history

# Configure Z
. /usr/local/etc/profile.d/z.sh

# Configure sdkman
export SDKMAN_DIR=$HOME/.sdkman
[[ -s $HOME/.sdkman/bin/sdkman-init.sh ]] && source $HOME/.sdkman/bin/sdkman-init.sh

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. ~/.private-profile

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
