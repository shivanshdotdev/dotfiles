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

### theme.conf
```
[General]
# Password mask character
passwordCharacter=*
# Mask password characters or not ("true" or "false")
passwordMask=true
# value "1" is all display width, "0.5" is a half of display width etc.
passwordInputWidth=0.5
# Background color of password input
passwordInputBackground=#1e1e2e

# Radius of password input corners
passwordInputRadius=50
# "true" for visible cursor, "false"
passwordInputCursorVisible=true
# Font size of password (in points)
passwordFontSize=96
passwordCursorColor=#cdd6f4
passwordTextColor=#cdd6f4

# Show or not sessions choose label
showSessionsByDefault=false
# Font size of sessions choose label (in points).
sessionsFontSize=24

# Show or not users choose label
showUsersByDefault=false
# Font size of users choose label (in points)
usersFontSize=48

# Path to background image
background=
# Or use just one color
backgroundFill=#1e1e2e
# Fill mode for image background
# Value must be on of: aspect, fill, tile, pad
backgroundFillMode=aspect

# Default text color for all labels
basicTextColor=#cdd6f4

# Radius of background blur
blurRadius=

```

# Plymouth

1 - `sudo cp -r mytheme/ /usr/share/plymouth/themes/`

2 - `sudo plymouth-set-default-theme -R mytheme`

3 - `sudo update-initramfs -u`

4 - Reboot

# Saving the apps in list

`snap list >> snap_packages.md`
`apt-mark showmanual >> apt_packages.md`
