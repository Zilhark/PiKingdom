# Steps for installing Arch on pi

To find the disk on the system

`lsblk`

Followed these steps:<br>
[Arch Linux Pi Setup](https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-4)

When updating on the pi a question of would you replace raspberrypi-firmware with rasalarm/raspberrypi-utils was asked.<br>
Lookes like the firmware one is older. So, i chose the utils<br>
[firmware](https://archlinuxarm.org/packages/armv7h/firmware-raspberrypi) <br>
[utils](https://archlinuxarm.org/packages/armv7h/raspberrypi-utils) <br>

## Setting up toys on Shinon
#### Setting up root
for ssh must edit:
`nano /etc/ssh/sshd_config`<br>
Uncomment the PermitRootLogin and next to it type yes, <br>
`systemctl restart sshd` <br>

#### Changing some env settings
usermod -l new_username old_username
passwd username
usermod -d /home/new_username -m new_username

### Reducing logs:
wget https://github.com/azlux/log2ram/archive/master.tar.gz -O log2ram.tar.gz
tar xf log2ram.tar.gz
log2ram-master/
sudo ./install.sh
sudo reboot
sudo nano /etc/log2ram.conf
/#Purpose: Specifies that rsync should be used for syncing the log files from the RAM disk to the SD card.
Impact:
Positive:
rsync is efficient in terms of synchronization because it only copies the changes (differences) rather than overwriting entire files. This reduces the amount of data written to the SD card, further minimizing wear.
rsync can preserve file permissions, ownerships, and timestamps accurately, ensuring the integrity of log files.
Negative:
Using rsync might slightly increase CPU usage during synchronization, but this is usually minimal and offset by the benefits of reduced writes.

->USE_RSYNC=true
sudo reboot


#### installing zsh
must be root:
being root


## Zsh
If wanting to rerun the installer
autoload -Uz zsh-newuser-install
  zsh-newuser-install -f
