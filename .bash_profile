# Set posix
set -o posix

# Set environment
export EDITOR="vim"

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Execute bash script
if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# Execute xserver, if not yet started
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
