edit-espanso() {
    case $1 in
        nvim)  nvim ~/.config/espanso/match/base.yml ;;
        geany) geany ~/.config/espanso/match/base.yml ;;
        *)     echo "Usage: edit-expander [nvim|geany]" ;;
    esac
}

jccp() {
    cd "$(xclip -selection clipboard -o)"
    clear
    ls
}

gcp(){
    git add . && git commit -m "$1" && git push
}

dsatime(){
    termdown $1 -a -e && notify-send -u critical "$1 Over" "If not done, Time to check for the hints"
}

ide() {
    # Start a new tmux session named "workspace", but don't attach to it yet
    tmux new-session -d -s workspace

    tmux rename-window -t workspace:1 'nvim'

    tmux new-window -t workspace:2 -n 'terminal'
    
    tmux new-window -t workspace:3 -n 'timer'

    tmux select-window -t workspace:1
    
    tmux attach-session -t workspace
}

dotfiles() {
    cp -r $1 ~/Documents/dotfiles/
}

sop(){ 
    file="$(find)"
    [ -n "$file" ] && okular "$file"
}

abm() {
    local temp=$(mktemp)
    echo "- [$1]($2)" | cat - ~/Documents/dotfiles/bookmarks.md > "$temp"
    mv "$temp" ~/Documents/dotfiles/bookmarks.md
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

rj(){
    javac $1 && java ${1%.*}
}

makejf(){
    touch "$1.java"

    if [[ "$2" == "--main" ]]; then
        echo "
public class $1{
    public static void main(String[] args){

    }
}" > $1.java

    else
        echo "
public class $1{

}" > $1.java
    fi
}

animated_wallpaper(){
    xwinwrap -fs -fdt -ni -b -nf -ov -- mpv -wid WID --loop --no-audio $1
}


