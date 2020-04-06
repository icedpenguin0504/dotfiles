########################################
# commands

# cd+ls if you are not in home directory
chpwd() {
  if [[ $(pwd) != $HOME ]]; then;
    ls -FG
  fi
}



########################################
# view

# prompt

## my color pallete

my_gray=248
my_blue1=117
my_blue2=075
my_green1=076
my_orange=208

## enable to use colors

autoload -Uz colors
colors

## git

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '[%F{$my_green1}%b%f]'
zstyle ':vcs_info:*' actionformats '[%F{$my_green1}%b%f(%F{$my_orange}%a%f)]'

## prompt

precmd() {vcs_info }
PROMPT='--------------------------------------------------
%F{$my_gray}[%n]%f  %F{$my_blue2}%~%f  ${vcs_info_msg_0_}
%(?.%F{$my_blue1}.%F{$my_orange})(•Θ••) >%f '



# ls colors

export LSCOLORS=gxfxcxdxbxegedabagacad



#######################################
# completion

autoload -U compinit
compinit

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'


#######################################
# alias

## core

alias ls='ls -FG'
alias ll='ls -l'
alias la='ls -a'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias ...='cd ...'

# utility

alias showcolors='for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo'

#######################################
# others

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/nasuyuta/.sdkman"
[[ -s "/Users/nasuyuta/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/nasuyuta/.sdkman/bin/sdkman-init.sh"
