# Look & Feel — Darkbeauty

Palette: sapphire `#2244dd`, skin `#f0d2c0`, pure black, white.
Wallpaper: the Darkbeauty fairy, set with swaybg.

## Compositor side (fenriz.conf)

    border_width  = 2
    border_active = 0x2244ddff
    shadow        = on
    shadow_color  = 0x2244dd55
    shadow_blur   = 28
    gaps          = 8
    rounding      = 12
    opacity       = 0.95

Sapphire borders with a soft 28 px glow behind the focused window,
12 px rounded corners, 8 px gaps, slightly translucent windows.

## Rofi

`configs/rofi/fenriz.rasi` themes the drun launcher to match
(black background, sapphire selection, skin text).
`powermenu.sh` is the matching rofi powermenu.

## Where the theme lives

- `fenriz.conf` → borders, shadows, rounding, opacity
- `waybar/style.css` → the bar and its pills
- `rofi/fenriz.rasi` → launcher and powermenu
- `exec-once = swaybg ...` → the wallpaper
