# keyboard, wifi and time
loadkeys fr-pc
wifi-menu
timedatectl set-ntp true
timedatectl

# format
mkfs.ext2 /dev/sda1
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
mkswap /dev/sda2

# mount
mount /dev/sda3 /mnt
mkdir -v /mnt/home && mount /dev/sda4 /mnt/home
swapon /dev/sda2
mkdir -v /mnt/boot && mount /dev/sda1 /mnt/boot

# prepare pacman mirror
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sed -s 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
rankmirrors -n 10 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist

# install base and wifi
pacstrap /mnt base base-devel
pacstrap /mnt wireless_tools wpa_supplicant dialog

# config system && chroot
genfstab -U -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt

