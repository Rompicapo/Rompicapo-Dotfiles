# Rompicapo-Dotfiles

## setup the dotfiles repo

thanks to [DistroTube](https://www.youtube.com/channel/UCVls1GmFKf6WlTraIb_IaJg) for the [video](https://youtu.be/tBoLDpTWVOM) on how to do this

1. git init --bare $HOME/dotfiles

2. alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' (add this alias to .bashrc)

3. config config --local status.showUntrackedFiles no

## Vim dependencies
- [Vim-plug](https://github.com/junegunn/vim-plug)

## Alacritty dependencies
- [nerd-fonts-complete](https://aur.archlinux.org/packages/nerd-fonts-complete/)

## DOOM emacs dependencies
- spell check: aspell-it
