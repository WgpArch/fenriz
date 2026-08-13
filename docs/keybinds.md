# Keybinds

MOD = `SUPER`. Mouse: `SUPER` + drag moves, `SUPER+SHIFT` + drag resizes
(tiled: drop-swap / split-drag; floating: free move / resize).

## Session & windows

| Bind | Action |
| ---- | ------ |
| `SUPER+Return` | terminal (lxterminal) |
| `SUPER+Q` | close focused window |
| `SUPER+SHIFT+E` | exit fenriz |
| `SUPER+J` / `SUPER+K` | focus next / previous window |
| `SUPER+Arrows` | focus directionally |
| `SUPER+Space` | toggle tiling layout |
| `SUPER+F` | fullscreen |
| `SUPER+V` | toggle floating |
| `SUPER+P` | pin window |
| `SUPER+D` | rofi app launcher (Darkbeauty theme) |
| `SUPER+SHIFT+X` | rofi powermenu |

## Workspaces (twelve)

| Bind | Action |
| ---- | ------ |
| `SUPER+1..9,0` | jump to workspace 1–10 |
| `SUPER+F1` / `SUPER+F2` | jump to workspace 11 / 12 |
| `SUPER+SHIFT+1..9,0` | send focused window to 1–10 |
| `SUPER+SHIFT+F1/F2` | send focused window to 11 / 12 |

## Media & brightness

| Bind | Action |
| ---- | ------ |
| `XF86AudioRaiseVolume` / `Lower` | volume ±5% via wpctl (repeats while held) |
| `XF86AudioMute` | toggle mute |
| `XF86MonBrightnessUp` / `Down` | brightness ±5% via brightnessctl |

## Screenshots

| Bind | Action |
| ---- | ------ |
| `Print` | full-screen grim to ~/Pictures/Screenshots/fenriz |
| `SUPER+Print` | slurp region → satty editor → wl-copy clipboard |
