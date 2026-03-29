alias logout="i3-msg exit"
alias q="exit"
alias c="clear"
alias gtw="cd /mnt/windows/Users/shiva/Desktop"
alias ctc="xclip -selection clipboard"
alias fd="fdfind"
alias vim="nvim"
alias vi="nvim"

alias sleep="systemctl suspend"
alias fixaudio="systemctl --user restart wireplumber"

alias editi3="cd ~/.config/i3/configurations/ && la"
alias editzsh="cd ~/.config/zsh && la"

alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --git --group-directories-first'
alias la="eza -alh --icons --group-directories-first"

alias bat="batcat"

alias find="fdfind | fzf"
alias gtn="cd ~/Documents/Obsidian-Notes/Programming/ && git status"
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

