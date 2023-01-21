# read all these files if in the interactive mode
case $- in *i*)
	# if .bash_login is readable, then execute it
	if [ -r ~/.bash_login ]; then
		. ~/.bash_login
	fi
	
	# if .profile is readable, then execute it
	if [ -r ~/.profile ]; then
		. ~/.profile
	fi

	# if $BASH_VERSION is not null, thus the bash shell is running
	if [ -n "$BASH_VERSION" ]; then
		# include .bashrc if it is readable
		if [ -r ~/.bashrc ]; then
			. ~/.bashrc
		fi
	fi
esac

