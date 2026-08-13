# Installation

Complete guide to building fenriz from source and applying the Darkbeauty rice on Arch Linux.

## 1. Build dependencies

    sudo pacman -S --needed base-devel cmake ninja wayland wayland-protocols \
        wlroots libxkbcommon pixman

## 2. Runtime companions (the rice)

    sudo pacman -S --needed waybar swaybg rofi grim slurp satty wl-clipboard \
        brightnessctl wireplumber libnotify network-manager-applet lxterminal

## 3. Build fenriz from source

    git clone https://github.com/zackb/fenriz
    cd fenriz
    make                 # configures + builds the debug and release presets
    sudo make install

`make install` places:

| File | Purpose |
| ---- | ------- |
| `/usr/bin/fenriz` | the compositor |
| `/usr/bin/fenrizctl` | IPC control tool |
| `/usr/share/wayland-sessions/fenriz.desktop` | SDDM/GDM session entry |
| `/usr/share/xdg-desktop-portal/fenriz-portals.conf` | screen-share portal routing |
| `/usr/share/fenriz/fenriz.conf` | shipped default config |

## 4. Install the Darkbeauty config

    mkdir -p ~/.config/fenriz
    cp configs/fenriz/fenriz.conf ~/.config/fenriz/fenriz.conf
    cp -r configs/waybar ~/.config/fenriz/waybar
    cp -r configs/rofi  ~/.config/fenriz/rofi
    chmod +x ~/.config/fenriz/rofi/powermenu.sh

Then edit `~/.config/fenriz/fenriz.conf` and adjust the user-specific paths:

- `exec-once = swaybg -i .../Darkbeauty.jpg` → point at your wallpaper
- the `Print` bind's screenshot directory → your Pictures folder

## 5. Workspaces

The rice ships with twelve workspaces:

    workspaces = 12

`SUPER+1..9,0` jumps to 1–10, `SUPER+F1/F2` jump to 11/12;
`SUPER+SHIFT+<same key>` sends the focused window instead.

## 6. Clickable Waybar pills (ext-workspace-v1)

The bar uses waybar's `ext/workspaces` module:

    "ext/workspaces": {
        "format": "{name}",
        "on-click": "activate",
        "ignore-hidden": false,
        "sort-by-id": true
    }

`ignore-hidden: false` is **required** — fenriz reports empty workspaces as
hidden, and waybar hides those by default.

### Known issue (fixed in this rice)

Older fenriz commits create the ext-workspace manager but only call
`workspace_protocol::sync()` from the IPC path, so the bar sees zero
workspaces until an IPC client connects. The fix is one line in
`src/server.cpp`, right after `workspace_protocol::init(*this);`:

    workspace_protocol::sync(*this);

The patch ships with this repo as `fenriz-sync-fix.patch`.

## 7. Log in

Log out, pick **Fenriz** in SDDM, log in. Verify the protocol is live:

    wayland-info | grep -i workspace

You should see `ext_workspace_manager_v1` — and twelve sapphire pills on the bar.
