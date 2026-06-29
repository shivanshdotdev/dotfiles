echo "Updating the system"
sudo pacman -Syu

echo "Installing the packages"
sudo pacman -S --noconfirm \
  alacritty \
  arandr \
  bat \
  blueman \
  bluez \
  bluez-utils \
  brightnessctl \
  btop \
  cargo \
  catfish \
  clang \
  cmatrix \
  copyq \
  curl \
  eza \
  fd \
  fdupes \
  feh \
  ffmpeg \
  flameshot \
  foliate \
  fzf \
  geany \
  git \
  grep \
  gzip \
  htop \
  i3-wm \
  kitty \
  localsend \
  maven \
  mpv \
  neofetch \
  neovim \
  numlockx \
  obs-studio \
  obsidian \
  okular \
  openjdk-21-jdk \
  pavucontrol \
  picom \
  polybar \
  ripgrep \
  rofi \
  sl \
  task \
  tmux \
  tree \
  tree-sitter \
  vlc \
  wget \
  xclip \
  xdotool \
  xournalpp \
  yazi \
  zathura \
  zsh \
  zsh-autosuggestions \
  zsh-syntax-highlighting

yay -S --noconfirm \
  bibata-cursor-theme-bin \
  bitwarden-bin \
  brave-bin \
  espanso-bin \
  telegram-desktop-bin \
  visual-studio-code-bin \
