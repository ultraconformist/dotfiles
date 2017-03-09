#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# alias file #
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# functions file #
if [ -f ~/.bash_functions ]; then
. ~/.bash_functions
fi

# Here Be Moogle ASCIIs

RED='\033[0;31m'	# Sets red color
CYAN='\033[0;36m'	# Sets cyan color
BLACK='\033[1;36m'	# Sets "black"
LGRAY='\033[0;37m' # Sets light gray color
YELLOW='\033[1;33m' # Sets yellow
BRORANGE='\033[0;33m' # Sets brown orange
VIOLET='\033[0;35m'	# Sets violet
NC='\033[0m'	# Sets no color
echo -e "          ${RED}${NC}"
echo -e "       ${CYAN}/\__\__/\\ ${NC} "
echo -e "      ${CYAN}/         \\ ${NC}"
echo -e "   ${BLACK}\ ${CYAN}( ${LGRAY}ﾐ${CYAN}⌒ ${RED} ●${CYAN} ⌒ ${LGRAY}ﾐ${CYAN} )${BLACK} /  ${YELLOW}★ ${RED}K${BRORANGE}U${YELLOW}P${VIOLET}O${YELLOW}★"
echo -e "${VIOLET}Welcome to Morgie's Nightmare Hellterminal!"

# Set terminal colors for commands
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '
