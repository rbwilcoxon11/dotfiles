for i in $HOME/.bash/etc/*.bash; do

	if [ -r "$i" ]; then
		if [ "$PS1" ]; then
			. "$i"
		else
			. "$i" >/dev/null 2>&1
		fi
	fi
done
