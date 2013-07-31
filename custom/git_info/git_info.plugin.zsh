# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

function git_info() {
  pushd . >/dev/null

  # Find base of git directory
  while [ ! -d .git ] && [ ! `pwd` = "/" ]; do cd ..; done

  # Show various information about this git directory
  if [ -d .git ]; then
    echo "== Remote URL: `git remote -v`"

    echo "== Remote Branches: "
    git branch -r
    echo

    echo "== Local Branches:"
    git branch
    echo

    echo "== Configuration (.git/config)"
    cat .git/config
    echo

    echo "== Most Recent Commit"
    git --no-pager log --max-count=1
    echo

    echo "Type 'git log' for more commits, or 'git show' for full commit details."
  else
    echo "Not a git repository."
  fi

  popd >/dev/null
}

function git_man(){
  echo "Update remote branch"
  echo "git remote show origin"
  echo "git remote update"
  echo "git fetch"
  echo "git checkout -b local-name origin/remote-name"
}
