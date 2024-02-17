# dpremy zsh config files and shell aliases

## Purpose

This repository contains the dotfiles and configs I use with zsh. It is desinged to work with [GNU stow](https://www.gnu.org/software/stow/), but can easily be used without it.

## Installation

```shell
# if you don't already have GNU stow, install stow for your OS

# clone this repo in to a .files directory
git clone -q https://gitlab.com/dpremy/dot-zsh.git ~/.files/dot-zsh

# use stow to symlink this 'package' in to your home directory
stow -d ~/.files/ -t ~/ -S dot-zsh
```

## Usage

The files in [.zsh](.zsh) may be worth reviewing.
