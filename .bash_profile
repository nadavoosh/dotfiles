for DOTFILE in `find /Users/nadav/.dotfiles`
do
	  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
