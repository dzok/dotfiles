export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
eval "$(rbenv init -)"
eval "$(direnv hook bash)"
export PATH="/opt/chefdk/bin:$PATH"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export GOPATH=~/dev/go
export PATH=$PATH:~/dev/go/bin

if which exenv > /dev/null; then eval "$(exenv init -)"; fi

C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

export PS1="\n$C_DARKGRAY[$C_RED\$(rbenv version-name)$C_DARKGRAY] \$(vcprompt -f '$C_DARKGRAY[$C_GREEN%n:%b%m%u$C_DARKGRAY] ')$C_PURPLE\u$C_DARKGRAY @ $C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w\n$C_DARKGRAY\$$C_DEFAULT "

export CLICOLOR=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

alias ll="ls -la"
#alias vim="/usr/local/Cellar/vim/HEAD/bin/vim"
#alias vi="/usr/local/Cellar/vim/HEAD/bin/vim"
alias vim="/usr/local/bin/nvim"
alias vi="/usr/local/bin/nvim"
alias please='sudo $(history -p \!\!)'
alias rstart='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias rstop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
