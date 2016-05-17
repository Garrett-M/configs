#!/bin/bash

type vim >/dev/null 2>&1 || { 
	echo >&2 "vim must be installed. Aborting.";
	exit 1; 
}

type git >/dev/null 2>&1 || { 
	echo >&2 "git must be installed. Aborting.";
	exit 1; 
}

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
