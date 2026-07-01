edit-espanso() {
    case $1 in
        nvim)  nvim ~/.config/espanso/match/base.yml ;;
        geany) geany ~/.config/espanso/match/base.yml ;;
        *)     echo "Usage: edit-expander [nvim|geany]" ;;
    esac
}

gcp(){
    git add . && git commit -m "$1" && git push
}

dsatime(){
    termdown $1 -a -e && notify-send -u critical "$1 Over" "If not done, Time to check for the hints"
}

dsa() {
    tmux new-session -d -s dsa -c ~/dsa -n 'nvim'

    tmux new-window -t dsa:2 -c ~/dsa -n 'terminal'

    tmux new-window -t dsa:3 -c ~/dsa -n 'timer'

    tmux select-window -t dsa:1

    tmux attach-session -t dsa
}

spring(){
    TARGET_DIR=~/spring

    tmux new-session -d -s spring -c "$TARGET_DIR" -n 'nvim'

    tmux new-window -t spring:2 -c "$TARGET_DIR" -n 'server'

    tmux split-window -h -c $TARGET_DIR

    tmux select-window -t spring:1

    tmux attach-session -t spring
}

dotfiles() {
    cp -r $1 ~/Documents/dotfiles/
}

sop(){ 
    file="$(find)"
    [ -n "$file" ] && okular "$file"
}

cdj() {
    cd ~
    local dir
    dir=$(fd -t d -H | fzf) || return
    cd "$dir"
    clear
    ls
    ccp
}

animated_wallpaper(){
    xwinwrap -fs -fdt -ni -b -nf -ov -- mpv -wid WID --loop --no-audio $1
}


