########################################
# core
########################################

export PATH=$HOME/bin:$PATH

########################################
# commands
########################################

# cd+ls 
chpwd() {
  dotfiles_dir="$HOME/dotfiles"
  if [[ $(pwd) = $dotfiles_dir ]]; then
    ls -aFG
  else
    ls -FG
  fi
}


########################################
# completion
########################################

autoload -U compinit
compinit

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'


########################################
# alias
########################################

## core

alias ls='ls -FG'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'

# utility

alias showcolors='for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs &'
alias vi='nvim'
alias cdroot='cd $(gitroot)'

# dotfiles

alias cdd="cd $HOME/dotfiles"
alias vz="vi $HOME/dotfiles/.zshrc"
alias sz="source $HOME/dotfiles/.zshrc"
alias vv="vi $HOME/dotfiles/.config/nvim/init.vim"

# git

alias gs="git status"

########################################
# powerline shell
########################################

function powerline_precmd() {
# customized prompt
    PS1="
$(powerline-shell --shell zsh $?)
$ "
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

########################################
# colors
########################################

export LSCOLORS=GxFxcxdxCxegedabagacad


########################################
# others
########################################
#

# Disable glob expansion
setopt nonomatch

# Added by fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/nasuyuta/.sdkman"
[[ -s "/Users/nasuyuta/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/nasuyuta/.sdkman/bin/sdkman-init.sh"

