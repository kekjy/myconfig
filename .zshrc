# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Ranger Export
export RANGER_LOAD_DEFAULT_RC=false

# Bindkey
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

autoload -U colors && colors
PROMPT="%{$fg[blue]%}%n%{$rest_color%} %{$fg[green]%}%1|%~ %{$reset_color%}%#>"
RPROMPT="[%{$fg_bold[yellow]%}%?%{$reset_color%}]"

# GO Proxy
export GOPROXY=https://goproxy.cn,direct
export GO111MODULE=on

# FZF Export
export FZF_DEFAULT_COMMAND="find ! -name '*.git,*.vscode,*.idea' -type f"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview 'cat {} 2> /dev/null | head -500'" 

# Golang Export
export GOROOT=/usr/lib/go
export GOPATH=~/workspace/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN
export ASSUME_NO_MOVING_GC_UNSAFE_RISK_IT_WITH=go1.20

# Plugin
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -s /etc/profile.d/autojump.zsh ]] && source /etc/profile.d/autojump.zsh

# Alias
alias l='ls -a --color'
alias ll='ls -lah --color'
alias ls='ls --color'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fvim='vim $(fzf)'

# End of lines configured by zsh-newuser-install
