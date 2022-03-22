# My Neovim configuration 

1. install neovim 0.6+

Ubuntu
```sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

ArchLinux
```sh 
sudo pacman -S neovim
```

Check the neovim's version
```sh
nvim --version
```

2. clone the repo 
```sh
git clone https://github.com/yuchenzhong/nvim.git ~/.config/nvim
```

3. install the Vim-plug
```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then open nvim and enter `:PlugInstall`.

## LSP

- clangd: `sudo pacman -S clang`
- cmake: `pip install cmake-language-server` 
- pyright: `pip install pyright`
- rust-analyzer: `sudo pacman -S rust-analyzer`
- gopls: `go install golang.org/x/tools/gopls@latest`
- vimls: `npm i -g vim-language-server`
- bashls: `npm i -g bash-language-server`
- ltex: `yaourt -S ltex-ls-bin`

## Auto-format

- clang-format 
- autopep8
- gofmt 
- rustfmt
- remark: `npm install -g remake-cli`
- shfmt: `go get -u mvdan.cc/sh/cmd/shfmt`
