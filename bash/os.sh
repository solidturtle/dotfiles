if [[ `uname` == 'Linux' ]]; then
	PS1="\
${GREEN}\u${NO_COLOUR} \
${BLACK}[ \
${GREEN}\W \
${BLACK}]${NO_COLOUR} \
${RED}\$(vcprompt)\
${BLACK} \n▶  ${NO_COLOUR}"
elif [[ `uname` == 'Darwin' ]]; then
	## --- path_helper OSX ---
	eval `/usr/libexec/path_helper -s`
	~/.rvm/scripts/rvm
	# export GROOVY_HOME=$(brew --prefix groovy)/libexec
	# Load pythonbrew
	# [[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
	## --- Configuration qui doit resté en local pour des raisons sécurité ---
	# eval "$(rbenv init -)"
  	# source /usr/local/opt/chruby/share/chruby/chruby.sh
  	# source /usr/local/share/chruby/auto.sh
	PS1="\
${GREEN}\u${NO_COLOUR} \
${WHITE}: \
${GREEN}\w${NO_COLOUR} \
${WHITE}\$(vcprompt)\
${LIGHT_WHITE} \n▶  ${NO_COLOUR}"
fi

## specific aliases
alias private='encfs $HOME/Documents/Privé $HOME/Documents/Visible'
