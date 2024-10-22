# myconfig
my base config ( vimrc i3wm etc..

Easy Arch WSL : [](https://github.com/yuk7/ArchWSL)

Arch Linux:
```bash
sed -i -e "s/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/" /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf

# Configure pacman
# Set up mirror list
echo 'Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist

# Initialize keyring, which is an essential security configuration
pacman-key --init && pacman-key --populate
pacman -Sy archlinux-keyring && pacman -Su

# Enable systemd
echo -e "[boot]\nsystemd=true" | sudo tee -a /etc/wsl.conf

# Shut down WSL to apply systemd settings
wsl --shutdown

# Verify if systemd started successfully
ps --no-headers -o comm 1

vim /etc/wsl.config
[experimental]
autoMemoryReclaim=gradual

# Configure sudo
EDITOR=vim visudo
--
%wheel ALL=(ALL:ALL) ALL

# Add a new user 'ws' and add them to the wheel group
useradd ws -m -G wheel -s /bin/bash
# Set the user's password
passwd ws

# Set 'ws' as the default user
echo -e "[user]\ndefault = ws" >> /etc/wsl.conf
# Disable the root account
passwd -l root

# Restart WSL to apply the configuration
wsl --shutdown
```
