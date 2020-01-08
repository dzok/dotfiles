set -o vi

autoload -Uz compinit && compinit

export LC_ALL=en_US.UTF-8
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="$PATH:$HOME/.yarn/bin"
export NPM_TOKEN=`cat ~/.npm_token`
export ERL_AFLAGS="-kernel shell_history enabled"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

source ~/.zplug/init.zsh
zplug "woefe/git-prompt.zsh"
zplug load

NEWLINE=$'\n'

export PROMPT='${NEWLINE}$(gitprompt)%F{blue}%n@%m%f : %F{black}%~%f${NEWLINE}$ '

export CLICOLOR=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

alias ll="ls -la"
alias vim="/usr/local/bin/nvim"
alias vi="/usr/local/bin/nvim"
alias please='sudo $(history -p \!\!)'
alias wow='git status'
alias such='git'
alias very='git'
alias plz='git'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
