useradd -g -users -m my_user
passwd my_user
EDITOR=nano visudo

#after login in new user
mkdir www
mkdir .log
cd www
git clone https://github.com/leopoldinelolcat/arch_config.git
#copy config file

cd /mnt
mkdir dd
mkdir usb

cd /opt
sudo chown -R my_user:my_user ../opt
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

trizen -Syu smartgit google-chrome
