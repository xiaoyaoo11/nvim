# FOR LINUX
## Install neovim
```bash
# if you use ubuntu => install neovim using snap (recommend), flatpak
snap install nvim --classic
echo 'export PATH=$PATH:/snap/bin' >> ~/.bashrc
source ~/.bashrc
```

```bash
# arch linux 
sudo pacman -S neovim
```

## Clone config
```bash 
# on linux
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
mkdir -p ~/.config/nvim/
git clone https://github.com/mew-11/nvim.git ~/.config/nvim && nvim
```

