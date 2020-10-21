# My personal dotfiles

This repository was created to store all my terminal configuration somewhere
(except keys, credentials and other private stuff ofcourse).

If You found this usefull, You can fork and modify all that stuff for Your
personal use.

## Tools used

Here are some links to repositories which are used.

### NeoVim

1. [NeoVim]()
2. [dein]()
3. [dein-ui]()
4. [Airline]()
5. [CodeStats]()
6. [Gruvbox]()
7. [NerdTree]()
8. [Coc]()

## Structure

Short description of directory structure for this repository.

### Current

```
colors // iterm colorscheme
install // software installation sliced in parts
nvim // contains plugins and dein install
shell // all stuff is currently living here (*uck)
  configs // my configuration files
```

### What should be

```
install // contain ONLY installation bash files
nvim // neovim ONLY directory
  dein // dein plugin directory (is gitignored)
  dein.installer.sh // dein installation script
  configs // NeoVim directory with configs sliced in parts
configs // Global directory cointaining configs (such as init.vim or .zshrc)
shell // Self writen functions
```

## TODO

This section will be removed after I will finish all the changes what I want,
but knowing myself that will not be fast :D

1. [ ] Change structure according to section above;
2. [ ] NeoVim installation on `~/install.sh` lauch;
3. [ ] Brew and all packages and environment setup on `~/install.sh` lauch;
3.1. [ ] Brew installation;
3.2. [ ] Docker setup together with Traefik (latest);
3.3. [ ] Valet installation;
3.4. [ ] Local Mysql installation;
3.5. [ ] Local Postgres installation;
3.6. [ ] Other software (non environment, just some tools which I use on daily
base);
4. [ ] OhMyZsh install;

