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
wget https://github.com/azlux/log2ram/archive/master.tar.gz -O log2ram.tar.gz <br>
tar xf log2ram.tar.gz <br>
log2ram-master/<br>
sudo ./install.sh<br>
sudo reboot<br>
sudo nano /etc/log2ram.conf<br>
/#Purpose: Specifies that rsync should be used for syncing the log files from the RAM disk to the SD card.<br>
Impact:<br>
Positive:<br>
rsync is efficient in terms of synchronization because it only copies the changes (differences) rather than overwriting entire files. This reduces the amount of data written to the SD card, further minimizing wear.<br>
rsync can preserve file permissions, ownerships, and timestamps accurately, ensuring the integrity of log files.<br>
Negative:<br>
Using rsync might slightly increase CPU usage during synchronization, but this is usually minimal and offset by the benefits of reduced writes.<br>

->USE_RSYNC=true<br>
sudo reboot<br>


#### installing zsh
must be root:
being root


### Zsh

[config]
~/.zshrc

If wanting to rerun the installer
autoload -Uz zsh-newuser-install
  zsh-newuser-install -f
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

the zsh file strucutre:
~/$HOME/.zshrc
~/.config/zsh/<br>
├── aliases.zsh<br>
├── environment.zsh<br>
├── functions.zsh<br>
├── plugins/<br>
│   ├── zsh-autosuggestions<br>
│   ├── zsh-completions<br>
│   ├── zsh-syntax-highlighting<br>
└── zshrc


#### Some toys 
lsd<br>
`sudo pacman -S lsd`<br>

bat<br>
sudo pacman -S bat<br>

joblin<br>
sudo pacman -S nodejs npm <br>
npm install -g joplin <br>


#### fzf
fzf <br>
sudo pacman -S fzf

[fuzzy auto-compliation]
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh




##### neovim
neovim<br>
sudo pacman -S neovim
[config]
~/.config/nvim/init.vim

set number
syntax on
set tabstop=4
set shiftwidth=4
set expandtab

" Plugin management with vim-plug
call plug#begin('~/.vim/plugged')

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


##### alacritty <br>
sudo pacman -S alacritty<br>
[config]
 ~/.config/alacritty/alacritty.yml





