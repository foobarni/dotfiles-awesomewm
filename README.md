# Welcome to my ~/

I have three main development branches in mind.
Each will represent a desktop environment that can be deployed on a fresh Arch Linux install:

#### 1. naked-env[^springrelease]

A bare-bone console configuration that sets environment variables, default applications
and file associations, shell configurations, etc., installs utilities needed for a
full desktop environment.

The other branches will use this as a dependency to build a GUI on top of it.

#### 2. awesome-env[^springrelease]

If you choose the X path, this will additionally install and configure the X Display Server
with AwesomeWM, and other GUI applications.

[^springrelease]: Coming in late Spring.

#### 3. hyprland-env[^endyear]

[^endyear]: Coming towards the end of this year.

If you choose the Wayland path, this will additionally install and configure Wayland with
Hyprland, and other GUI applications.

Arbitrary branches you see:

- `common-ground` for configurations shared among the GUI environments.
- `x230` those pesky additions that make the X230 Thinkpad buttons work.

For further details see `README.md` in each environment branch.

### Installation

Clone the *environment branch* you wish to deploy:

```
git clone -b <chosen-env> https://github.com/foobarni/dotfiles.git
```

Change directory and run `install.sh`:

```
cd <chosen-env>
chmod u+x install.sh
./install.sh
```
