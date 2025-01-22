# My dotfiles

My personal terminal configuration files

## Requirements

You need to have the following installed

### Git

```
$ apt install git
```

### Stow

```
$ apt install stow
```

## Installation

First, clone this dotfiles repo in your $HOME diretory using git

```
$ git clone https://github.com/MartinZelenak/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create symlinks

```
$ stow .
```

## Making changes

If you have one of the existing dotfiles already created you can use

```
$ stow --adopt .
```

to update the configuration in the dotfiles repo


## Inspiration

Inspired by [Dreams of Autonomy](https://youtu.be/y6XCebnB9gs?si=yWP9XYEv_yymsXFe)

---
---

## Used tools

All the tools being configured with dotfiles

### zsh

zsh shell

```
$ apt install zsh
$ chsh -s $(which zsh)
```

### zim

zsh package manager

Follow installation [guide](https://zimfw.sh/docs/install)

### tmux

terminal multiplexer

```
$ apt install tmux
```

### tpm

tmux package manager

```
$ git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm/
```

### zoxide

a better cd command

```
$ apt install zoxide
```

### fd

a better find command

```
$ apt install fd-find
$ ln -s $(which fdfind) /usr/bin/fd
```

### bat

a better cat command

```
$ apt install bat
$ ln -s $(which batcat) /usr/bin/bat
```

### fzf

fuzzy finder, grep alternative

```
$ git clone https://github.com/junegunn/fzf.git .fzf
$ cd .fzf
$ ./install
```

### fzf-git

useful fzf keybinds in git repos

```
$ git clone https://github.com/junegunn/fzf-git.sh.git $HOME/scripts/fzf-git
```

### eza

a better ls

```
$ apt install eza
```