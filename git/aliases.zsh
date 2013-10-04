g () {
  if [ $# -eq 0 ]
  then
    git status -sb
  else
    git $*
  fi
}
compdef g=git

alias gl='git log --pretty=oneline --decorate --abbrev-commit'
compdef _git gl=git-log

alias gs='git status'
compdef _git gs=git-status

alias gp='git push'¬
compdef _git gp=git-push

alias gpr='git pull --rebase --prune'

alias ghell='git submodule foreach --recursive "git submodule sync"'
