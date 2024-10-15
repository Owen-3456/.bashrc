#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Auto-completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# Environment Variables
export EDITOR='nano'
export VISUAL='code'

# Custom Functions
mkcd() {
	if [ -z "$1" ]; then
		echo "Error: No directory name provided."
		return 1
	fi

	if ! mkdir -p "$1"; then
		echo "Error: Failed to create directory '$1'."
		return 1
	fi

	if ! cd "$1"; then
		echo "Error: Failed to change directory to '$1'."
		return 1
	fi
}

# Custom Aliases

# Pacman helper function
pacman-help() {
	echo '
Update: -Sy
Upgrade: -Syu
Install: -S
Search: -Ss
Search Installed: -Qs
Remove: -R
Remove pack and deps: -Q
Install from file: -U
Clear cache: -Scc
'
}

# SSH Aliases
alias ssh-servername="ssh user@0.0.0.0"

# Linutil alias
alias linutil="curl -fsSL https://christitus.com/linux | sh"

# Zoxide setup
export PATH="$HOME/.local/bin:$PATH"
eval"$(zoxide init bash)"

#oh-my-posh set up
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/Owen-3456/power-shell-profile/main/nordcustom.omp.json)"

# runs fastfetch if it is installed
if [ -f /usr/bin/fastfetch ]; then
	fastfetch
fi