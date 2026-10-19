export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="afowler"

ENABLE_CORRECTION="true"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Pronmpt configuration

function dir_icon {
	if [[ "$PWD" == "$HOME" ]]; then
		echo "%B%F{cyan}%f%b"
	else
		echo "%B%F{cyan}%f%b"
	fi
}

function parse_git_branch {
	local branch
	branch=$(git symbolic-ref --short HEAD 2> /dev/null)
	if [ -n "$branch" ]; then
		echo " [$branch]"
	fi
}

# Terminal line 
PROMPT='%F{white}󰣇 $(dir_icon) %F{red}%~%f%${vcs_info_msg_0_} %F{yellow}$(parse_git_branch)%f %(?.%B%F{green}.%F{red})%f%b '

# Aliases
alias l="eza -lh --icons=auto"
alias ls="eza -ha --icons=auto --sort=name --group-directories-first"
alias mvn11="JAVA_HOME=/usr/lib/jvm/java-11-openjdk mvn"
export PATH="$PATH":"$HOME/.pub-cache/bin"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/grizz/.dart-cli-completion/zsh-config.zsh ]] && . /home/grizz/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/opt/flutter/bin"

# opencode
export PATH=/home/grizz/.opencode/bin:$PATH
