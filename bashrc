[ -z "$PS1" ] && return
[[ -s ~/.bashrc_local ]] && source ~/.bashrc_local
bind -r '\C-s'
stty -ixon
export GREP_OPTIONS="--exclude=.svn --exclude=.git"
export EDITOR=vi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
alias g=git
complete -o bashdefault -o default -o nospace -F _git g
PS1='\h:\W$(__git_ps1 "\[\e[1;31m\]@\[\033[1;33m\]%s\[\e[0m\]")\$ '
