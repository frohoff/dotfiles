export PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=${DIR:0:12}...${DIR:${#DIR}-15}; else CurDir=$DIR; fi'
export PS1="\u@\h:\$CurDir \$ "
export PATH=$PATH:/sbin:/usr/sbin
export HISTFILESIZE=10000
shopt -s histappend
umask 077

shopt -s checkwinsize # fix term wrapping issues

source .git-completion.bash
source .git-prompt.sh
