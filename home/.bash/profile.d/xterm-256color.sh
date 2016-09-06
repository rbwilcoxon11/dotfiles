# check for xterm-256color

# uname specific options
case `uname` in

Darwin)
if [ -e /usr/share/terminfo/78/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
        ;;

Linux)
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
;;

esac

