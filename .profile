export CLICOLOR=1
export LSCOLORS=Hxfxcxdxbxegedabagacad
export PATH=~/.dotfiles:$PATH
[[ -s "/Users/frantic/.rvm/scripts/rvm" ]] && source "/Users/frantic/.rvm/scripts/rvm"
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias spec='rspec --color -f doc'
alias ll='ls -la'

parse_git_branch2() {
  git_status="$(git status 2> /dev/null)"
  pattern="^# On branch ([^${IFS}]*)"
  if [[ ! ${git_status}} =~ "working directory clean" ]]; then
    state="\033[0;31m"
  else
    if [[ ${git_status}} =~ "Your branch is ahead of" ]]; then
      state="\033[0;33m"
    else
      state="\033[0;32m"
    fi
  fi
  # add an else if or two here if you want to get more specific

  if [[ ${git_status} =~ ${pattern} ]]; then
    branch=${BASH_REMATCH[1]}
    echo -e " $state(${branch})"
  fi
}

PS1="\[\033[1;37m\]\w\$(parse_git_branch2)\[\033[0;34m\]\$\[\033[0m\] "

