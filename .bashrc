#
# ~/.bashrc
#

if [ $((RANDOM % 10 + 1)) == 1 ];
then
    pfetch
else   
    colorscript random | tail -n +2
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1='[\u@\h \W]\$ '
#PS1="~$ "
PS1=' \W →  '


### EXPORT
export TERM="xterm-256color"                      # getting proper colors
export HISTCONTROL=ignoredups:erasedups           # no duplicate entries
export PATH=$PATH:~/.local/bin/
export PATH=${PATH}:/usr/lib/jvm/default/bin

#alias
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias bashrc='vim ~/.bashrc'
alias compose='setxkbmap -option compose:menu'
alias sshfix='TERM=linux'
alias cclear='clear; colorscript random | tail -n +2'

#doom emacs alias
alias doom='~/.emacs.d/bin/doom'

#rec
alias rec='ffmpeg -f alsa -i hw:0 out.mp3'
#trans
alias toen='trans -b :en' # translates from English to Italian
alias toit='trans -b :it' # translates from Italian to English

#ls (exa)
alias ll='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ls='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

#pacman - paru
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'  # remove orphaned packagesi
alias parsua='paru -Sua --noconfirm'             # update only AUR pkgs (paru)

#grep
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#random flags
alias free='free -m' # show sizes in MB

#info
alias crypto='curl -s rate.sx'
alias price="curl -s rate.sx/doge |awk 'NR==34'"
alias doge="curl -s rate.sx/doge"
alias btc="curl -s rate.sx/btc"

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

