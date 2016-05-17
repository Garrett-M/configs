# ~/.bash_profile: executed by the terminal on run

# Sets vi keybindings
set -o vi

# For Node
NODE_ENV=development

#clear

PS1=' \[\033[1;32m\]\w\[\033[0;36m\] $ \[\033[0m\]'
#PS1='\[\033[0;36m\]◀ \[\033[1;32m\]\u \[\033[0;36m\]\w ▶ \[\033[0m\]'
#PS1='\[\033[0;36m\]┌─ \[\033[1;32m\]\u \[\033[0;36m\]\w\n└► \[\033[0m\]'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxHxBxegehabagaceh

export PATH=/Library/Frameworks/Python.framework/Versions/3.3/bin:$PATH
