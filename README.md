Disable the SecureBoot.

### Grub Theme

sekiro-grub-theme: https://github.com/AbijithBalaji/sekiro_grub_theme

### Plymouth

`sudo cp -r mytheme/ /usr/share/plymouth/themes/`

`sudo plymouth-set-default-theme -R mytheme`

`sudo update-initramfs -u`

Reboot

