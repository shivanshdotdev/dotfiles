Quick Clone
```
cd ~
git clone https://github.com/shivanshdotdev/dotfiles.git
```

# Touch-to-Click in TouchPad Not Working

```bash
sudo nvim /etc/X11/xorg.conf.d/30-touchpad.conf
```

Paste the Below content into the above file
```
Section "InputClass"
    Identifier "devname"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "NaturalScrolling" "true"
EndSection
```
Logout the i3 and log back in.

# Disable the SecureBoot.

# Grub Theme

sekiro-grub-theme: [Here](https://github.com/AbijithBalaji/sekiro_grub_theme)
grub-of-tsushima: [Here](https://github.com/ivanimmanuel-dev/grub-of-tsushima)

# sddm
### Installation
```bash
sudo pacman -S --needed git sddm qt5-graphicaleffects qt5-quickcontrols2 qt5-svg
```

```
git clone https://github.com/stepanzubkov/where-is-my-sddm-theme.git
cd where-is-my-sddm-theme
sudo cp -r where-is-my-sddm-theme /usr/share/sddm/themes/where-is-my-sddm
```

```
sudo mkdir -p /etc/sddm.conf.d
sudo nvim /etc/sddm.conf.d/theme.conf
```

### Testing
```
sddm-greeter --test-mode --theme /usr/share/sddm/themes/where-is-my-sddm
```

### Enabling the Service
```
sudo systemctl disable gdm.service && sudo systemctl enable sddm.service
```

### Theme 
[Click Here](https://github.com/shivanshdotdev/dotfiles/sddm)

# Plymouth

1 - `sudo cp -r mytheme/ /usr/share/plymouth/themes/`

2 - `sudo plymouth-set-default-theme -R mytheme`

3 - `sudo update-initramfs -u`

4 - Reboot

# Saving the apps in list

`snap list >> snap_packages.md`
`apt-mark showmanual >> apt_packages.md`
