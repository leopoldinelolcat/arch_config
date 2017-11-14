# config name
echo monarch > /etc/hostname
echo '127.0.1.1 monarch.localdomain monarch' >> /etc/hosts

# config timezone
ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime

# config locale
echo 'fr_FR.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
echo LANG="fr_FR.UTF-8" > /etc/locale.conf
export LANG=fr_FR.UTF-8

# config keyboard
echo KEYMAP=fr > /etc/vconsole.conf

# RAMdisk
mkinitcpio -p linux

# password
passwd

# bootloader
pacman -S syslinux
syslinux-install_update -iam
nano /boot/syslinux/syslinux.cfg


