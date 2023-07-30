# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias l='ls -lt'
alias la='ls -alt'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../../'
alias runJekyll='bundle exec jekyll serve --watch --drafts'
alias sshAngelbird='ssh yidong0416@angelbird.co.kr' #cailin1898!!
alias cdGithubio='cd /c/Users/unite/Documents/__git__/upj53.github.io'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7 winget
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
