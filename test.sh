#! /bin/bash

function parse_git_dirty 
{
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] &&  echo "*"
}

function parse_git_branch 
{
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
#PS1='\[\e[0;35m\][Lili\[\e[0m\]\[\e[1;31m\]$(parse_git_branch)\[\e[0m\]\[\e[0;35m\]]\[\e[0m\]$ '
echo $(parse_git_branch)
