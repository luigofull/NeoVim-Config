> ## NVChad config installation

1. Require packages: on Arch
```
$ sudo pacman -S unzip npm nodejs python pyright clang dotnet-sdk dotnet-sdk-6.0 dotnet-sdk-7.0 dotnet-sdk-8.0 
```

```
$ yay -S omnisharp-roslyn
```

2. Install NVChad
```
$ git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

3. Then Clone repository:

With HTTPS:
```
$ git clone https://github.com/luigofull/NeoVim-Config.git
```

With SSH:
```
$ git clone git@github.com:luigofull/NeoVim-Config.git
```

4. After cloning repository copy `NeoVim-Config/custom/` to `~/.config/nvim/lua`
```
$ cp -r NeoVim-Config/custom/ ~/.config/nvim/lua/
```

5. Than open neovim with `nvim` and write the commands: `:TSInstall python c cpp`, `:MasonInstallAll`
