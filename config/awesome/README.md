# About

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

[^hotkeys]: Some are conflicting with awesome's *client layout toggle* bindings.
    Since I'm only using two layouts and no titlebar, they don't cause trouble. But I'll patch this eventually.
    I plan to remove the bindings I don't really use anyway.
[^kbd]: Set using [X configuration files](https://wiki.archlinux.org/title/Xorg/Keyboard_configuration#Using_X_configuration_files)

---

# Structure

If, after stripping `rc.lua`, a managable number of lines will remain, the `main` folder won't happen.

- `keys/`: modifiers, mouse button, global- and client specific bindings[^key];
- `main/`: core code I rarely touch;
- `ui-elements/`: menu, titlebar, wibar, theme, etc.;
- `widgets/`: or "modules" appearing in the `ui-elements`.

[^key]: Modifiers might not get a separate module.

# Theme

I am using the built-in *gtk theme* which is following the system's GTK theme.

---

# Features

I find some behaviors annoying, or expect them to happen, such as:

- [ ] Close context menus when clicking outside of them or when pressing `Escape`;
- [ ] Disable tag swithcing with the mouse wheel;
- [ ] Spawn pop-up floating windows in the middle, and
    - [ ] possibly tile them if, - for any reason -, more than one opens.
