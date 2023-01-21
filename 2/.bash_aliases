# use --color options on ls, dir and grep commands
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -ACFhl'
alias l='ls -AFh'
alias l.='ls -d .[^.]*'

# jobs aliases
alias j="jobs -l"

# clear alias
alias cls='clear -x'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

dfh () {
	echo "Disk Space Utilization For $HOSTNAME"
	df -h
	echo "Calculated."
}

