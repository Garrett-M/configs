# NOTE: In its current state, this is not adequate. Add syntax highlighting and
# other stuff that is already in the default debian or ubuntu bashrc

# ~/.bashrc: executed by the terminal on run

### Taken from default Ubuntu .bashrc ###
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

### End of default Ubuntu .bashrc ###

# Sets vi keybindings
set -o vi

# For Node
NODE_ENV=development


PS1=' \[\033[1;32m\]\w\[\033[0;36m\] $ \[\033[0m\]'
#PS1='\[\033[0;36m\]◀ \[\033[1;32m\]\u \[\033[0;36m\]\w ▶ \[\033[0m\]'
#PS1='\[\033[0;36m\]┌─ \[\033[1;32m\]\u \[\033[0;36m\]\w\n└► \[\033[0m\]'


