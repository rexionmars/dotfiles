# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

export TERM="xterm-256color"
#export TERM=rxvt-256color

# Path to your oh-my-bash installation.
export OSH='/home/len4rdi/.oh-my-bash'

# Theme configuration
OSH_THEME="powerline-multline"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Unc# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
  battery
)

### ALIAS COMMON SYSTEM
alias ls='exa -l -n --color=always --icons --no-time'
alias mv='mv -v'
alias rm='rm -v'
alias rf='rm -rfv'
alias cp='cp -v'
alias run='clear;python3'
alias top="top | lolcat --24bit"
alias genPass='gpg --gen-random --armor 1 32'

### Theme.sh configuration
if command -v theme.sh > /dev/null; then
	[ -e ~/.theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"
	#Binds C-o to the previously active theme.
	bind -x '"\C-o":"theme.sh $(theme.sh -l|tail -n2|head -n1)"'

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
fi
