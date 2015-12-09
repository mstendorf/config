# $FreeBSD: releng/9.3/share/skel/dot.cshrc 244007 2012-12-08 00:28:16Z eadler $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

alias h		history 25
alias j		jobs -l
alias ls        ls -GF
alias la	ls -aFG
alias lf	ls -FAG
alias ll	ls -lAFG
alias emacs     emacsclient -c
alias ..        cd ..
alias c         clear
alias cd..      cd ..
alias mkdir     mkdir -pv
alias grep      grep --color
alias egrep     egrep --color
alias fgrep     fgrep --color
alias header    curl -I
alias headerc   curl -I --compress
alias psmem     ps -auxf | sort -nr -k 4
alias pscpu     ps -auxf | sort -nr -k 3


# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin)
set CLICOLOR = "yes"
setenv	EDITOR	emacs
setenv	PAGER	more
setenv	BLOCKSIZE	K

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%N@%m:%~ %# "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
                bindkey '^[[1;5D'   backward-word           # ctrl+left
                bindkey '^[[1;5C'   forward-word            # ctrl+right]]']]'
	endif

endif
