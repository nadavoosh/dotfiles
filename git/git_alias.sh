#!/usr/bin/env bash
alias g=git
alias gwash="git pull -p && git branch -vv | grep ': gone]'|  grep -v \"\*\" | awk '{ print $1; }' | xargs git branch -D"
alias renameTag="!sh -c 'set -e;git tag $2 $1; git tag -d $1;git push origin :refs/tags/$1;git push --tags' -"
alias gc="git checkout"
