alias logout="gnome-session-quit"
alias q="exit"
alias c="clear"
alias gtw="cd /mnt/windows/Users/shiva/Desktop"
alias ctc="xclip -selection clipboard"
alias sleep="systemctl suspend"
alias editi3="cd ~/.config/i3/configurations/ && nvim ~/.config/i3/config"

alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --git --group-directories-first'
alias la="eza -alh --icons --group-directories-first"

alias bat="batcat"

alias find="fdfind | fzf"
alias home="cd ~"
alias gtn="cd ~/Documents/Obsidian-Notes/Programming/ && git status"
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


