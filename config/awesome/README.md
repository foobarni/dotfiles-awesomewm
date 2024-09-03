# About

*...in progress*

I am using `awesome-git v4.3` at the moment, following its respective documentation.
`rc.lua` is being rewritten in a modular way (see `modularc.lua`), taking structural inspiration from
[Epsi's step-by-step guide](https://epsi-rns.github.io/desktop/2019/06/15/awesome-overview.html),
[Gwynsaw](https://github.com/Gwynsav/modular-awm-default/tree/master) and
[elenapan](https://github.com/elenapan/dotfiles/tree/master).

### Why?

- To keep configurations I rarely touch out of the way, and
- to hot-swap elements in main `rc.lua`.

### Hotkeys[^hotkeys] that differ from default config:

- `Super` + `t`: open terminal
- `Super` + `q`: close window
- `Super` + `Space`: open rofi in drun mode
- `Control` + `Space`: keyboard layout toggle[^kbd]

[^hotkeys]: Some are conflicting with Awesome's *client layout toggle* bindings.
    Since I'm only using two layouts and no titlebars, it doesn't affect my setup. But I'll patch this eventually,
    once I remove unused features.
[^kbd]: Set using [X configuration files](https://wiki.archlinux.org/title/Xorg/Keyboard_configuration#Using_X_configuration_files)

---

# Structure

The planned structure is something similar, and any remaining bits will end up as some files in `modules/`.

```
├── modules
│   ├── keybindings
│   ├── themes
│   ├── wibars
│   └── widgets
└── rc.lua
```

# Theme

I am using the built-in *zenburn theme* with tiny mods.
