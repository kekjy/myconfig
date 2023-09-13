# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Ranger Export
export RANGER_LOAD_DEFAULT_RC=false
alias rr='ranger'
export EDITOR="vim"
export HIGHLIGHT_STYLE="base16/gruv_box-dark-hard"

# Bindkey
# for rxvt
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

bindkey '[1;5A' history-search-backward
bindkey '[1;5B' history-search-forward

autoload -U colors && colors

autoload -Uz compinit && compinit -u
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

if [ ${UID} -eq 0 ]; then
PROMPT="%{$fg[red]%}%n%{$rest_color%} %{$fg[green]%}%1|%~%{$reset_color%}%#> "
else
PROMPT="%{$fg[blue]%}%n%{$rest_color%} %{$fg[green]%}%1|%~%{$reset_color%}%#> "
fi
RPROMPT="[%{$fg_bold[yellow]%}%?%{$reset_color%}]"

# GO Proxy
export GOPROXY=https://goproxy.cn,direct
export GO111MODULE=on

# FZF Export
# export FZF_DEFAULT_COMMAND="find ! -name '*.git,*.vscode,*.idea' -type f"
# DONOT FORGOT ADD KEYBINDINGS !
# source /usr/share/doc/fzf/examples/key-bindings.bash
# or RUN GITREPO install
alias fvim='vim $(fzf)'

export FZF_DEFAULT_COMMAND='ag --hidden -p <(printf "%s/\n" .git .svn .vscode .idea .vim node_modules build .sass-cache) -l -g ""'
export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

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

# End of lines configured by zsh-newuser-install
