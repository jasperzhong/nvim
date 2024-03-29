# Install 

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

4. python environment

In your Python environment,
```sh
pip install neovim
```

5. other

NodeJS (used by Github Copilot)

```sh
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
```


## LSP install

- clangd: `sudo pacman -S clang` (`sudo apt-get install -y clangd-10 && sudo ln -s /usr/bin/clangd-10 /usr/bin/clangd` in Ubuntu 18.04LTS)
- cmake: `pip install cmake-language-server`  
- pyright: `pip install pyright`
- rust-analyzer: `sudo pacman -S rust-analyzer`
- gopls: `go install golang.org/x/tools/gopls@latest`
- vimls: `npm i -g vim-language-server`
- bashls: `npm i -g bash-language-server`
- ltex: `yaourt -S ltex-ls-bin`

## Auto-format install

- clang-format (`sudo apt-get install -y clang-format`)
- autopep8: `pip3 install autopep8`
- gofmt 
- rustfmt
- remark: `npm install -g remake-cli`
- shfmt: `go get -u mvdan.cc/sh/cmd/shfmt`


# Features 

- Auto-completion from LSP, buffer, and Github Copilot. 
- Linter

# Shotcuts

| command | operation | 
| --- | --- |
| `jk` | remap to `ESC` | 
| `<C-t>`  | Toggle NERD Tree  | 
| `<C-y>` | Autoformat | 
| `<C-b>` | Toggle Tagbar |
| `<C-i>` | Isort |
|`<C-f>` | accept Github Copilot's suggestion | 



