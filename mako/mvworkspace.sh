#!/bin/bash

#notification id passed by mako 
id=$1

#get the app name or desktop entry from mako
app_info=$(makoctl list | jq -r ".data[0][] | select(.id.data == $id)")
app_name=$(echo "$app_info" | jq -r ".[\"app-name\"].data")
desktop_entry=$(echo "$app_info" | jq -r ".[\"desktop-entry\"].data // empty")
search_term="${desktop_entry:-$app_name}"

#find window address in hyprland
window_address=$(hyprctl clients -j | jq -r ".[] | select(.class | ascii_downcase == \"${search_term,,}\" or .title | ascii_downcase | contains(\"${search_term,,}\")) | .address" | head -n 1)

#if found window, move to that workspace
if [ -n "$window_address" ]; then
    hyprctl dispatch focuswindow address:"$window_address"
fi

makoctl dismiss -n "$id"