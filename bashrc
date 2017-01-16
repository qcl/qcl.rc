#
#   Bash configuration for @qcl
#

#   Change $PS1
export PS1="\u@\h:\w\n\$ "

#   TODO verify lines below
#   enable color in the terminal bash shell
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
#export TERM=xterm-colo

#   Git bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

#   Git aware prompt
#   https://github.com/jimeh/git-aware-prompt
#   TODO clone this repo to local path
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h:\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\$ "

#   Bash Git Prompt
#   https://github.com/magicmonty/bash-git-prompt
#if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
#fi

#   alias rm
alias rm='rm -i'

#   TODO check git dir
#   git auto completion
#source /usr/local/git/contrib/completion/git-completion.bash

#   TODO it's only for MacOS which has homebrew installed
#   use homebrew version Applications
export PATH=/usr/local/bin:$PATH
