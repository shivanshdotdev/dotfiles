# ENV
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH="$JAVA_HOME/bin:$HOME/.local/bin:/snap/bin:$PATH"

# Load custom configs
for file in ~/.config/zsh/*.zsh; do
    [ -r "$file" ] && source "$file"
done


# Plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship
eval "$(starship init zsh)"

