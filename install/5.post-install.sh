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


