hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")

    hl.exec_cmd("hyprpaper &")
    hl.exec_cmd("nwg-look -a &")
    hl.exec_cmd("mako")
    
    hl.exec_cmd("wl-paste --type text --watch cliphist store &")
    hl.exec_cmd("wl-paste --type image --watch cliphist store &")

    hl.exec_cmd("waybar -c $HOME/.config/waybar/config.jsonc -s $HOME/.config/waybar/style.css &")
end)
