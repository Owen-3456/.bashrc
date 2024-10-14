# Pacman helper
alias pacman-shell="echo '
Update: -Sy
Upgrade: -Syu
Install: -S
Search: -Ss
Search Installed: -Qs
Remove: -R
Remove pack and deps: -Q
Install from file: -U
Clear cache: -Scc
'"

# SSH Aliases
alias ssh-servername="ssh user@0.0.0.0"

# Linutil alias
alias linutil="curl -fsSL https://christitus.com/linux | sh"

# Zoxide setup
export PATH="$HOME/.local/bin:$PATH"
eval"$(zoxide init bash)"

#oh-my-posh set up
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/Owen-3456/power-shell-profile/main/nordcustom.omp.json)"
