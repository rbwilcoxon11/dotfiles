# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

source ~/.bash/path
source ~/.bash/aliases

for i in $HOME/.bash/profile.d/*.sh; do
  if [ -r "$i" ]; then
  if [ "$PS1" ]; then
. "$i"
else
. "$i" >/dev/null 2>&1
fi
fi
done

ulimit -s hard
ulimit -u hard

#the most important line is below
export EDITOR=vim

#I like pretty colors when I grep
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# set gitapi homebrew token -- get your unique token at:
# https://github.com/settings/applications

export HOMEBREW_GITHUB_API_TOKEN="SOME_HASH"


source "$HOME/.dotsplat.git/dotsplat.sh"
