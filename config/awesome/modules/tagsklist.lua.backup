local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local beautiful = require("beautiful")

local function create_combined_widget(s, taglist_buttons, tasklist_buttons)
    local combined_widget = wibox.widget {
        layout = wibox.layout.fixed.horizontal,
    }

    local function update_combined_widget()
        combined_widget:reset()

        -- Iterate through all tags
        for _, tag in ipairs(s.tags) do
            local tag_widget = awful.widget.taglist {
                screen  = s,
                filter  = function(t) return t == tag end,
                buttons = taglist_buttons,
                layout  = {
                    layout = wibox.layout.fixed.horizontal
                },
                widget_template = {
                    {
                        {
                            {
                                id     = 'text_role',
                                widget = wibox.widget.textbox,
                            },
                            left = 5,
                            right = 5,
                            widget = wibox.container.margin,
                        },
                        id = 'background_role',
                        widget = wibox.container.background,
                    },
                    layout = wibox.layout.fixed.horizontal,
                }
            }

            combined_widget:add(tag_widget)

            -- Show tasks only for the currently selected tag
            if tag.selected then
                for _, client in ipairs(tag:clients()) do
                    local task_widget = awful.widget.tasklist {
                        screen  = s,
                        filter  = function(c) return c == client end,
                        buttons = tasklist_buttons,
                        layout  = {
                            layout = wibox.layout.fixed.horizontal
                        },
                        widget_template = {
                            {
                                {
                                    {
                                        id     = 'icon_role',
                                        widget = wibox.widget.imagebox,
                                    },
                                    margins = 2,
                                    widget  = wibox.container.margin,
                                },
                                {
                                    id     = 'text_role',
                                    widget = wibox.widget.textbox,
                                },
                                layout = wibox.layout.fixed.horizontal,
                            },
                            id = 'background_role',
                            widget = wibox.container.background,
                        }
                    }

                    combined_widget:add(task_widget)
                end
            end
        end
    end

    -- Update the widget when tag selection changes
    tag.connect_signal("property::selected", update_combined_widget)
    client.connect_signal("manage", update_combined_widget)
    client.connect_signal("unmanage", update_combined_widget)
    client.connect_signal("property::name", update_combined_widget)
    client.connect_signal("property::icon", update_combined_widget)
    client.connect_signal("property::urgent", update_combined_widget)
    client.connect_signal("property::minimized", update_combined_widget)
    client.connect_signal("property::sticky", update_combined_widget)
    client.connect_signal("property::floating", update_combined_widget)

    -- Initial update
    update_combined_widget()

    return combined_widget
end

return create_combined_widget

