# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
#
alias vi="nvim"
alias vim="nvim"
alias shut="su - -c 'poweroff'"
alias reeb="su - -c 'reboot'"
alias l="ls -l"
alias cm="cmus"
alias pm="pulsemixer"
alias mt="neomutt"

# change cursor shape to block
alias cb="echo -ne '\x1b[2 q'"

# change cursor shape to snowman
alias cs="echo -ne '\x1b[6 q'"

export EDITOR=nvim
export BROWSER=librewolf
export GTK_OVERLAY_SCROLLING=0
export QT_QPA_PLATFORMTHEME=qt5ct
export GOPATH="$HOME/src/go"
export PATH="$HOME/bin:$HOME/.local/bin:$GOPATH/bin:$PATH"
export GPG_TTY=$(tty)
export HRED="\m/d(._.)b\m/"

# COW SAY!
if [[ -z $TMUX ]]; then
	fortune | cowsay -f moose
fi
