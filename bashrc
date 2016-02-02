#
#   Bash configuration for @qcl
#

#   Change $PS1
export PS1="\u@\h:\w\n\$ "

#   Git bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

#   Git aware prompt
#   https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h:\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\$ "

#   Bash Git Prompt
#   https://github.com/magicmonty/bash-git-prompt
#if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
#fi
