# Bash Prompts

# default
# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '

# simple
PS1='\[\e[38;5;40m\]-> \[\e[0m\]'

# normal
# PS1='\[\e[91m\]\u\[\e[0m\] in \[\e[96m\]\w\n\[\e[38;5;40m\]>\[\e[0m\] '

# big
# PS1='\[\e[37m\][\[\e[97m\]\t\[\e[37m\]]-[\[\e[96m\]\u\[\e[37m\]@\[\e[38;5;118m\]\h\[\e[37m\]]-[\[\e[94m\]\w\[\e[37m\]]\n-> \[\e[0m\]'

# Exports

export PATH="$PATH:/opt/nvim-linux64/bin"
