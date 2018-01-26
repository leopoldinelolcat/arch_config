parted /dev/sda
(parted) mklabel gpt
(parted) mkpart ESP fat32 1MiB 513MiB
(parted) set 1 boot on
(parted) mkpart primary ext4 513MiB 20.5GiB
(parted) mkpart primary ext4 20.5GiB 70.5GiB
(parted) align-check optimal 1


