# FOR LINUX

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

```bash 
# on linux
git clone https://github.com/xiaowu-d3/nvim.git ~/.config/nvim && nvim
```

You can use script
```bash
git clone https://github.com/xiaowu-d3/nvim.git
cd nvim
chmod +x install.sh
./install.sh
```

## Basic mappings
- space + ee: open neotree
- space + ff: search file
## Basic commands
- :w -> save file
- :q -> quit neovim
- :MasonInstall `name_mason` -> all name => :Mason
  eg: MasonInstall clangd
- ctrl + h,j,k,l => move right, down, up, left

