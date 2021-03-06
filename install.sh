#!/bin/bash

cd ~ || exit 1

[ -d .dotfiles ] || { echo Install in ~/.dotfiles; exit 1; }

pushd .dotfiles
git submodule init
git submodule update
popd

function install_file {
  echo "#### $1"
  TARGET=~/.$1
  SOURCE=.dotfiles/$1
  if ! [ -e $SOURCE ]
  then
    echo File not found $SOURCE
    return
  fi

  if [ -h $TARGET ]
  then
    echo $TARGET is already a link. Removing.
    rm -f $TARGET
  fi
  if [ -e $TARGET ]
  then
    echo $1 alsready exists!
    if [ ! -f $TARGET -a ! -d $TARGET ]
    then
      echo $TARGET is neither a file or directory. Skipping...
      return
    fi
    SAVED=$TARGET.dotfiles-orig
    echo Saving actual $TARGET to $SAVED
    mv $TARGET $SAVED
  fi

  echo Installing $SOURCE in $TARGET
  ln -s $SOURCE $TARGET
  echo "Done $1"
}

function save_bashrc_as_local {
  if [ -e ~/.bashrc ]
  then
    if [ -e ~/.bashrc_local ]
    then
      echo Cannot save current .bashrc to .bashrc_local
      echo .bahsrc will NOT be installed
      return 1
    else
      echo Saving .basrc as .bashrc_local
      mv ~/.bashrc ~/.bashrc_local
    fi
  fi
}

echo Installing dotfiles...
save_bashrc_as_local && install_file 'bashrc'
install_file 'bash'
install_file 'vimrc'
install_file 'vim'
install_file 'gitconfig'
install_file 'gitignore_global'
install_file 'pryrc'
install_file 'oh-my-zsh'
install_file 'zshrc'
