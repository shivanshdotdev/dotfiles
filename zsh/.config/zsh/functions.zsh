edit-espanso() {
    case $1 in
        nvim)  nvim ~/.config/espanso/match/base.yml ;;
        geany) geany ~/.config/espanso/match/base.yml ;;
        *)     echo "Usage: edit-expander [nvim|geany]" ;;
    esac
}

dotfiles() {
    cp -r $1 ~/Documents/dotfiles/
}

external-display-only() {
    xrandr --output eDP-1 --off --output $1 --auto
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


