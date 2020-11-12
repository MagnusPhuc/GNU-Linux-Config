#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#alias for a better life
alias ls='ls --color=auto'
alias vi='vim'
alias aur='cd ~/AUR/'
alias srce='source'
alias srcebash='source ~/.bashrc'
alias ll='ls --color=auto -l'
alias grep='grep --color=auto'
alias mpkg='makepkg -si'
alias u='ufetch'
alias C='cd ~/Dev_stuff/C'
alias scrlock='XSECURELOCK_NO_COMPOSITE=1 xsecurelock'
#Prompt String 1
PS1='\e[1;33m\u@\h: \e[31m\W\e[0m\$\n'
