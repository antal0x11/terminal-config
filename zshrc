function git_branch_name() {
	git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

alias ls='ls -G'
setopt PROMPT_SUBST
PROMPT='%n %F{196}::%f %F{082}%~%f %F{063}$(git_branch_name)%f %F{226}> %f'

