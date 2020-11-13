export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=powerlevel10k/powerlevel10k

plugins=(git npm yarn zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export EDITOR="/usr/local/Cellar/micro/2.0.7/bin/micro"

# Aliases
alias gl="git log --all --decorate --oneline --graph"
alias gs="git status"
alias ll="ls -FGlAhp"
cd() { builtin cd "$@"; ls; }
alias cd..="cd ../"
alias ~="cd ~"
alias c="clear"
alias ip='ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk "{print $2}"'
alias publicIp="curl https://ipinfo.io/ip"
trash () { command mv "$@" ~/.Trash; }
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias work="cd ~/Workspace"
alias tmp="cd ~/Tmp"
alias typora="open -a typora"
alias python="python3"
alias webstorm="~/webstorm"

# Functions
gif_opt () {
	mkdir min;
	for f in *.gif; do
		gifsicle --resize-fit-width $1 -i "$f" > "min/${f%.gif}.gif"
	done;
}

# Disable sharing history in iTerm2
unsetopt inc_append_history
unsetopt share_history

# Configure Z
source /usr/local/etc/profile.d/z.sh

# Configure sdkman
export SDKMAN_DIR=$HOME/.sdkman
[[ -s $HOME/.sdkman/bin/sdkman-init.sh ]] && source $HOME/.sdkman/bin/sdkman-init.sh

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
