function g() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u \e[0;31m::\e[m \e[0;32m\]\w\e\e[1;34m\$(g)\e[m\e[m \e[0;33m>\e[m "

