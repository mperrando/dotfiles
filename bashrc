[[ -s ~/.bashrc_local ]] && source ~/.bashrc_local

[ -z "$PS1" ] && return

function dotfiles-update {
  [[ -z $(which git) ]] && return
  [[ -d ~/.dotfiles ]] || { echo "Bad installation"; exit 1; }
  pushd ~/.dotfiles > /dev/null
  git pull --ff-only -q
  popd > /dev/null
}

dotfiles-update
bind -r '\C-s'
stty -ixon
export GREP_OPTIONS="--exclude=.svn --exclude=.git"
export EDITOR=vi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
alias g=git
complete -o bashdefault -o default -o nospace -F _git g
PS1='\h:\W$(__git_ps1 "\[\e[1;31m\]@\[\033[1;33m\]%s\[\e[0m\]")\$ '
. ~/.bash/ctags.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
