case $- in
    *i*) ;;
      *) return;;
esac

# Set aliases
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# Set history
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize
HISTCONTROL=ignoreboth

export PATH=$PATH:$HOME/Scripts

# Set colored shell
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Check for graphical terminal
#case "$TERM" in
#xterm*|rxvt*)
#		# Set graphical terminal transparancy
#		transset -m 0.95 -i $WINDOWID >/dev/null
#    ;;
#*)
#    ;;
#esac
