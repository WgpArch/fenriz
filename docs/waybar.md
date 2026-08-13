# Waybar & Scripts

The Darkbeauty bar: sapphire-outlined pills on black, skin-tone text,
rounded modules across the right side.

## Layout

- **Left:** launcher icon, `ext/workspaces` pills (1–12), `wlr/taskbar`
- **Right:** clock, weather, cpu, memory, temperature, battery, tray,
  volume, disk, power

## The workspace pills

    "ext/workspaces": {
        "format": "{name}",
        "on-click": "activate",
        "ignore-hidden": false,
        "sort-by-id": true
    }

`on-click: activate` makes the pills clickable; `ignore-hidden: false`
keeps all twelve visible even when empty (fenriz reports empty
workspaces as hidden, and waybar hides those by default).

## Taskbar actions

    "wlr/taskbar": {
        "on-click": "minimize",
        "on-click-middle": "close",
        "on-click-right": "maximize",
        "tooltip-format": "{title}"
    }

Left-click minimizes, middle-click closes, right-click maximizes.

## Pill states (style.css)

The ext-workspace module tags its buttons with `.active`, `.occupied`,
`.hidden` and `.urgent`. The Darkbeauty style.css styles:

    #workspaces button          → transparent, sapphire border, skin text
    #workspaces button.active   → sapphire fill, white text
    #workspaces button.occupied → skin border
    #workspaces button:hover    → sapphire fill
