# bash/zsh git local prompt support


Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Blue="\[\033[0;34m\]"         # Blue
Color_Off="\[\033[0m\]"       # Text Reset





export PS1=$Blue"\u"@"\@"$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$Red'"$(__git_ps1 " (%s)"); \
  fi) '$Blue"\w"$Color_Off' \$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Blue"\w"$Color_Off' \$ "; \
fi)'

export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad