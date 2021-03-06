# aliases
alias ss="script/server -u"
alias sp="script/server RAILS_ENV=production"
alias sc="script/console"
alias ll="ls -al"
alias g="git"
alias rf="rm -rf"
# alias rs="cd /Users/davidd/Sites/robertson_scholars"
# mkdir, cd into it
mkcd () {
 mkdir -p "$*"
 cd "$*"
}

# add mysql bin to path
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

# command prompt
export PROMPT_COMMAND='PS1="\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`\u@\h:\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\` %\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'

# let's tell our shell to use rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rebind Ctrl-p to go to the beginning of line since Ctrl-a is used for tmux and
# screen
bind '"\C-p": beginning-of-line'
