local awful = require("awful")

-- Define your mouse bindings
local mouse_bindings = {
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewprev),
    awful.button({ }, 5, awful.tag.viewnext),
}

-- Export the mouse bindings table
return mousekeys
