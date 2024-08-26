
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt inc_append_history
setopt share_history
setopt histignorespace
setopt nobeep

export ODIN_ROOT=$HOME/projects/Odin
export EDITOR=nvim
export VISUAL=nvim
export LSCOLORS=GxfxbxBxCxfxDxHxHxhxhx
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/.cargo/bin"

#fpath=(/usr/share/zsh/site-functions $fpath)

# Color sequence variables.
blue="\e[0;34m"    lblue="\e[1;34m"
cyan="\e[0;36m"    lcyan="\e[1;36m"
#  black="\e[0;30m"    dgray="\e[1;30m"
#    red="\e[0;31m"     lred="\e[1;31m"
#  green="\e[0;32m"   lgreen="\e[1;32m"
# orange="\e[0;33m"   yellow="\e[1;33m"
# purple="\e[0;35m"  lpurple="\e[1;35m"
#  lgray="\e[0;37m"    white="\e[1;37m"
reset_color="\e[0m"

# Displays the branch and short status if the current dir is a git repo.
g() {
  if git rev-parse --is-inside-work-tree 2> /dev/null | grep -q 'true' ; then
    echo -en "\n${cyan}Branch:${reset_color}"
    echo -e "${blue}`git branch -a | grep '\*' | cut -d'*' -f 2`${reset_color}" 
    git status | sed '2!d' | sed 's/^/  /'

    if [ `git status --short | wc -l` -gt 0 ]; then
      echo -e "\n${cyan}Status:${reset_color}"
      git status --short
    fi

    echo
  fi
}

alias l="ls -Alh --color=always"
alias ls="ls --color=always"
alias gogo="goimports -w -l . ; gofumpt -w -l . ; go build && go test"

alias gitch="git checkout"
alias gitd="git diff "
alias gita="git add"
alias gitc="git commit -m "
alias gitpp="git pull --prune"

autoload -Uz compinit colors && compinit && colors

zstyle ':completion:*' rehash true # automatically find new executables in path 

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey -v # Enable vi mode via escape.
bindkey '^P' history-beginning-search-backward # Ctrl-P (prev) and
bindkey '^N' history-beginning-search-forward  # Ctrl-N (next) will use zle's history search.
bindkey \^U kill-whole-line # Ctrl-U clears entire line from any position within the line.
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

PS1="%{$fg[white]%}[%{$fg_bold[cyan]%}%~%{$reset_color%}]: " # prompt
