#!/bin/bash
# Originally by Fraser Smith.
#
# Custom keybindings script for Pop Shell based on Sway/i3
# Order of precedence: Sway/i3 defaults > Gnome defaults > Pop Shell defaults
#
# WARNING: This script will change your Gnome keybindings. If you are not using
# Pop Shell, it will be useless.
# To reverse the effects of this, you can reset keybindings in the settings
# application.

# scripts/configure.sh {
# First Let's name our vim keys to make things more readable later
left="h"
down="j"
up="k"
right="l"

# Define the dconf branches
KEYS_GNOME_WM=/org/gnome/desktop/wm/keybindings
KEYS_GNOME_SHELL=/org/gnome/shell/keybindings
KEYS_MUTTER=/org/gnome/mutter/keybindings
KEYS_MEDIA=/org/gnome/settings-daemon/plugins/media-keys
KEYS_MUTTER_WAYLAND_RESTORE=/org/gnome/mutter/wayland/keybindings/restore-shortcuts

KEYS_SHELL=/org/gnome/shell/extensions/pop-shell

# Disable incompatible shortcuts
# Restore the keyboard shortcuts: disable <Super>Escape
dconf write ${KEYS_MUTTER_WAYLAND_RESTORE} "@as []"
# Hide window: disable <Super>h
dconf write ${KEYS_GNOME_WM}/minimize "['<Super><Shift>minus']"
# Open the application menu: restore default
dconf write ${KEYS_GNOME_SHELL}/open-application-menu "['<Super>F10']"
# Toggle message tray: restore default
dconf write ${KEYS_GNOME_SHELL}/toggle-message-tray "['<Super>v','<Super>m']"

# Move window to the next monitor above: replace by pop-monitor-up
dconf write ${KEYS_GNOME_WM}/move-to-monitor-up "@as []"
# Move window to the next monitor below: replace by pop-monitor-down
dconf write ${KEYS_GNOME_WM}/move-to-monitor-down "@as []"
# Move window to the next monitor on the left: replace by pop-monitor-left
dconf write ${KEYS_GNOME_WM}/move-to-monitor-left "@as []"
# Move window to the next monitor on the right: replace by pop-monitor-right
dconf write ${KEYS_GNOME_WM}/move-to-monitor-right "@as []"

# Move window one workspace down: replace by pop-workspace-down
dconf write ${KEYS_GNOME_WM}/move-to-workspace-down "@as []"
# Move window one workspace up: replace by pop-workspace-up
dconf write ${KEYS_GNOME_WM}/move-to-workspace-up "@as []"
# Move window one workspace to the left
dconf write ${KEYS_GNOME_WM}/move-to-workspace-left "['<Super><Shift>Left','<Super><Shift>${left}']"
# Move window one workspace to the right
dconf write ${KEYS_GNOME_WM}/move-to-workspace-right "['<Super><Shift>Right','<Super><Shift>${right}']"

# Move window to workspaces
dconf write ${KEYS_GNOME_WM}/move-to-workspace-1 "['<Super><Shift>1']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-2 "['<Super><Shift>2']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-3 "['<Super><Shift>3']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-4 "['<Super><Shift>4']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-5 "['<Super><Shift>5']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-6 "['<Super><Shift>6']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-7 "['<Super><Shift>7']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-8 "['<Super><Shift>8']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-9 "['<Super><Shift>9']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-10 "['<Super><Shift>0']"

# Ctrl + Alt + direction keys, change workspaces, move focus between monitors
# Switch to workspace below
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-down "['<Control><Alt>Down','<Control><Alt>${down}']"
# Switch to workspace above
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-up "['<Control><Alt>Up','<Control><Alt>${up}']"
# Switch to workspace left
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-left "['<Control><Alt>Left','<Control><Alt>${left}']"
# Switch to workspace right
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-right "['<Control><Alt>Right','<Control><Alt>${right}']"

# Disable tiling to left / right of screen
dconf write ${KEYS_MUTTER}/toggle-tiled-left "@as []"
dconf write ${KEYS_MUTTER}/toggle-tiled-right "@as []"

# Toggle maximization state
dconf write ${KEYS_GNOME_WM}/toggle-maximized "['<Super>f']"
# Maximize window: disable <Super>Up
dconf write ${KEYS_GNOME_WM}/maximize "@as []"
# Restore window: disable <Super>Down
dconf write ${KEYS_GNOME_WM}/unmaximize "@as []"

# Lock screen
dconf write ${KEYS_MEDIA}/screensaver "['<Super>Escape']"
# Home folder
dconf write ${KEYS_MEDIA}/home "@as []"
# Launch email client
dconf write ${KEYS_MEDIA}/email "@as []"
# Launch web browser
dconf write ${KEYS_MEDIA}/www "@as []"
# Rotate Video Lock
dconf write ${KEYS_MEDIA}/rotate-video-lock-static "@as []"

# Close Window
dconf write ${KEYS_GNOME_WM}/close "['<Super><Shift>q']"
# }

# Disable incompatible shortcuts and conflicting shortcuts
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-1 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-2 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-3 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-4 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-5 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-6 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-7 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-8 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-9 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-10 "@as []"

#---------------------------------------------------------------------------
# Navigation key bindings
#---------------------------------------------------------------------------

# Enable switch-to-workspace with <Super>number
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-1 "['<Super>1']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-2 "['<Super>2']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-3 "['<Super>3']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-4 "['<Super>4']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-5 "['<Super>5']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-6 "['<Super>6']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-7 "['<Super>7']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-8 "['<Super>8']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-9 "['<Super>9']"
dconf write ${KEYS_GNOME_WM}/switch-to-workspace-10 "['<Super>0']"

#---------------------------------------------------------------------------
# Change Pop Shell default bindings
#---------------------------------------------------------------------------
# See schemas/org.gnome.shell.extensions.pop-shell.gschema.xml

# ------- Appearance Options

# Show a hint around the active window
dconf write ${KEYS_SHELL}/active-hint "true"
# (Do not) show title bars on windows with server-side decorations
dconf write ${KEYS_SHELL}/show-title "false"

# ------- Launcher

# Search key combo
dconf write ${KEYS_SHELL}/activate-launcher "['<Super>d']"

# ------- Window Management Keys

# Toggle stacking mode inside management mode
dconf write ${KEYS_SHELL}/toggle-stacking "['w']"
# Toggle stacking mode outside management mode
dconf write ${KEYS_SHELL}/toggle-stacking-global "['<Super>w']"
# Enter tiling mode
dconf write ${KEYS_SHELL}/tile-enter "['<Super>r']"
# Toggles a window between floating and tiling
dconf write ${KEYS_SHELL}/toggle-floating "['<Super><Shift>space']"

# ------- Tiling Mode

# Move window left
dconf write ${KEYS_SHELL}/tile-move-left "['<Shift>Left','<Shift>${left}']"
# Move window down
dconf write ${KEYS_SHELL}/tile-move-down "['<Shift>Down','<Shift>${down}']"
# Move window up
dconf write ${KEYS_SHELL}/tile-move-up "['<Shift>Up','<Shift>${up}']"
# Move window right
dconf write ${KEYS_SHELL}/tile-move-right "['<Shift>Right','<Shift>${right}']"

# ------- Resize in normal direction
# Resize window left
dconf write ${KEYS_SHELL}/tile-resize-left "['Left','${left}']"
# Resize window down
dconf write ${KEYS_SHELL}/tile-resize-down "['Down','${down}']"
# Resize window up
dconf write ${KEYS_SHELL}/tile-resize-up "['Up','${up}']"
# Resize window right
dconf write ${KEYS_SHELL}/tile-resize-right "['Right','${right}']"

# ------- Workspace Management
# Move window to the lower monitor
dconf write ${KEYS_SHELL}/pop-monitor-down "['<Control><Shift><Alt>Down','<Control><Shift><Alt>${down}']"
# Move window to the upper monitor
dconf write ${KEYS_SHELL}/pop-monitor-up "['<Control><Shift><Alt>Up','<Control><Shift><Alt>${up}']"
# Move window to the leftward monitor
dconf write ${KEYS_SHELL}/pop-monitor-left "['<Control><Shift><Alt>Left','<Control><Shift><Alt>${left}']"
# Move window to the rightward monitor
dconf write ${KEYS_SHELL}/pop-monitor-right "['<Control><Shift><Alt>Right','<Control><Shift><Alt>${right}']"
