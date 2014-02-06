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

alias gco='git checkout'

alias ghell='git submodule foreach --recursive "git submodule sync"'

gstats () {
   git log --shortstat --author="$*" | grep -E "fil(e|es) changed" | \
   awk '{files+=$1; inserted+=$4; deleted+=$6} END \
   {print "Files changed: ", files, "\nInserted: ", inserted, "\nDeleted: ", deleted, "\nTotal: ", inserted-deleted}'
}
