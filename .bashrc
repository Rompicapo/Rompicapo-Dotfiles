#
# ~/.bashrc
#
pfetch
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='~$ '
PS1='→  '
#setxkbmap -option compose:menu

#alias
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias bashrc='vim ~/.bashrc'
alias compose='setxkbmap -option compose:menu'
alias sshfix='TERM=linux'
#doom emacs alias
alias doom='~/.emacs.d/bin/doom'

#rec
alias rec='ffmpeg -f alsa -i hw:0 out.mp3'
