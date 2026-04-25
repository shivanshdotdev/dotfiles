Just put the `.config` files/directories in the `.config` directory of the current machine

# Disable the SecureBoot.

# Grub Theme

sekiro-grub-theme: [Here](https://github.com/AbijithBalaji/sekiro_grub_theme)

# Plymouth

1 - `sudo cp -r mytheme/ /usr/share/plymouth/themes/`

2 - `sudo plymouth-set-default-theme -R mytheme`

3 - `sudo update-initramfs -u`

4 - Reboot

# Saving the apps in list

`snap list >> snap_packages.md`
`apt-mark showmanual >> apt_packages.md`
