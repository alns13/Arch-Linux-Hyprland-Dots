----- MONITORS -----
hl.monitor({
    output   = "DP-2",
    mode     = "2560x1440@164.84",
    position = "0x0",
    scale    = "1",
})

----- MY PROGRAMS -----
local terminal    = "kitty"
local fileManager = "yazi"
local browser     = "firefox"

----- AUTOSTART -----
require("modules.autostart")

----- ENVIRONMENT VARIABLES -----
require("modules.environment")

------ PERMISSIONS ------
require("modules.permissions")

----- APPEARANCE -----
require("modules.appearance")

----- ANIMATIONS -----
require("modules.animations")

----- LAYOUTS -----   
require("modules.layout")

----- KEYBINDINGS -----
require("modules.keybinds")

----- WINDOW RULES -----
require("modules.windowrules")

----- WORKSPACES -----
require("modules.workspaces")

----- MISC -----
hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})
    
----- INPUT -----
hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
    
        follow_mouse = 1,
    
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
    
        touchpad = {
        natural_scroll = false,
        },
    },
})
    
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
