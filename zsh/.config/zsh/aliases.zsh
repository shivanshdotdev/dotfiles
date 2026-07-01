alias logout="i3-msg exit"
alias q="exit"
alias gtw="cd /mnt/windows/Users/shiva/Desktop"
alias ctc="xclip -selection clipboard"
alias ccp="pwd | ctc"

alias fd="fdfind"
alias ff="nvim -c 'Telescope find_files'"

alias sleep="systemctl suspend"

alias editi3="cd ~/.config/i3/configurations/ && la"
alias editzsh="cd ~/.config/zsh && la"
alias mirror_display="xrandr --output HDMI-1 --same-as eDP-1"
alias second_display_only="xrandr --output eDP-1 --off --output HDMI-1"
alias run="python3"

alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --git --group-directories-first'
alias la="eza -alh --icons --group-directories-first"

alias bat="batcat"

alias find="fdfind | fzf"
alias gtn="cd ~/Documents/Obsidian-Notes/Programming/ && git status"
alias javaprac="cd ~/Documents/Java-MOOC/Java-Programming-1"
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

