# Welcome to my ~/

*...in progress*

This repository contains my dotfiles of my AwesomeWM environment.

### 1. TL;DR:

1. `install-packages.sh` to install additional packages on a base Arch Linux install;
2. `deploy.sh` to deploy configurations and generate `.inventory`;
3. `gather.sh` to gather the deployed configurations based on `.inventory`; e.g. when you made changes to them.

---

Since my recent incident[^hard], I choose not to track my `.dotfiles` using the
[bare and alias method](https://wiki.archlinux.org/title/Dotfiles) anymore. It is also not so evident which
files I am trying to keep track of in my offline sessions.

[^hard]: I wanted to reorganize the `--bare` repository so I can work on different environments in one place
    and to deploy their configurations to my liking. Since the working directory was `$HOME`, 
    I learned the difference between `git clean` and `git rm` the hard way.

I am implementing some safety measures to prevent future headaches and heart attacks:

- The `dotfiles` are cloned in a directory, modified in this directory and *deployed* after modification.
- The `deploy` script copies the dotfiles to `$HOME` and generates an `.inventory` list.
- The `gather` script collects all the dotfiles tracked in the `.inventory`, ready to be pushed remotely.
- Any risky manouvers are tested in virtual environments.

### 2. About

Assuming you only installed some [essential packages](https://wiki.archlinux.org/title/Installation_guide#Install_essential_packages)
in the `pacstrap` step, such as the kernel, `base`, maybe an editor and a networking software, `install-packages.sh` will
additionally install:

- `base-devel`, ...
- Some command line tools:
    - Terminal: `alacritty`;
    - Editor: `vim`;
    - File Manager: `lf` and additional dependencies for previews:
        - `ctpv, atool, chafa, diff-so-fancy`, etc;
    - A terminal browser: `w3m`;
- Utilities such as: `udiskie, zip, unzip`, etc.
- Some elementary programs for a GUI environment:
    - X Display Server, picom, Firefox, Thunar, etc.

The choice to optionally install some non-essential programs with the script is left to my future self.
