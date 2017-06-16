#!/usr/bin/bash

# make sure some stuff is installed
hash vim 2>/dev/null || { echo >&2 "You need vim installed"; exit 1; }
hash git 2>/dev/null || { echo >&2 "You need git installed"; exit 1; }
hash zsh 2>/dev/null || { echo >&2 "You need zsh installed"; exit 1; }
hash tmux 2>/dev/null || { echo >&2 "You need tmux installed"; exit 1; }
hash wget 2>/dev/null || { echo >&2 "You need wget installed"; exit 1; }

# copy stuff to home
cp bashrc ~/.bashrc
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf

# tmux themepack  
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

# oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# copy zsh stuff
cp agnoster.zsh-theme ~/.oh-my-zsh-themes/agnoster.zsh-theme
cp zshrc ~/.zshrc

# install vim plugins
bash vim-plugin-install.sh

echo "Everything installed. You still have to manually configure your terminal"
