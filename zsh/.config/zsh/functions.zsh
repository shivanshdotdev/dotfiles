edit-expander() {
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


