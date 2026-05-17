#!/bin/bash
# ==============================================================================
# SCRIPT BUSCAR KEYBINDS DO HYPRLAND PARA O ROFI USANDO JSON
# ==============================================================================
ROFI_THEME="${HOME}/.config/rofi/custom/style-5.rasi"
export HYPRLAND_INSTANCE_SIGNATURE=$HYPRLAND_INSTANCE_SIGNATURE

#--------COMANDO-------------
hyprctl -j binds | jq -r '.[] | select(.repeat == false and .mouse == false) | "        +    \(.key)       \(if .description != "" then .description else .arg end)"'
