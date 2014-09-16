# Execute composite manager
exec compton &

# Merge resources, if available
xrdb -merge ~/.Xresources

# Process global xinitrc scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Execute awesome window manager
exec awesome >> ~/.cache/awesome/stdout 2 >> ~/.cache/awesome/stderr
