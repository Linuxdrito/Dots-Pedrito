# SON MIS DOTS POR SI CAMBIO DE DISTRO O PIERDO MI VOID POR ALGUN KERNEL PANIC


> Advanced configurations for a Wayland-based Linux environment, designed for minimalism and maximum hardware performance.

This repository manages two distinct workflows: **Hyprland** for dynamic tiling and **Niri** for horizontal scrolling.

---

## System Specifications

| Field | Value |
|---|---|
| **CPU** | Intel i7-1185G7 (11th Gen) |
| **GPU** | Intel Iris Xe Graphics (Tigerlake-LP GT2) |
| **Target Resolution** | 1920×1080 |
| **Shell** | Zsh (manually compiled at `/usr/local/bin/zsh`) |

---

## Software Dependencies

### Core Utilities

| Package | Description |
|---|---|
| `foot` | Primary terminal (server/client) |
| `wofi` | Application launcher and menu |
| `waybar` | Modular status bar |
| `brightnessctl` | Backlight management |
| `playerctl` / `mpc` | Media and MPD control |

### Runtime Applications

| Package | Description |
|---|---|
| `firefox` / `thorium-browser` | Web browsers |
| `btop` | Resource monitor |
| `ncmpcpp` / `kew` | TUI music players |
| `cava` | Audio visualizer |
| `grim` | Screenshots |

---

## Environment Comparison

| Feature | Hyprland (Dynamic Tiling) | Niri (Scrolling) |
|---|---|---|
| **Gaps** | 4 (Inner) / 8 (Outer) | 8 (Global) |
| **Borders** | 2px (Active Gradient) | 3px (Active White) |
| **Rounding** | 8px | 8px |
| **Wallpapers** | `www` (GIF support) | `swaybg` (Static) |
| **Animations** | Bezier curves (`easeOutQuint`) | Custom GLSL Shaders |

---

## Global Keybinds

> **Mod key:** `Alt`

| Keybind | Action | Application |
|---|---|---|
| `mod + Return` | Open Terminal | `footclient` |
| `mod + D` | Application Menu | `wofi` |
| `mod + Q` | Kill Window | — |
| `mod + B` | Web Browser | `badwolf` |
| `mod + T` | Power Browser | `thorium` |
| `mod + Shift + B` | System Monitor | `btop` |
| `mod + Shift + N` | Music Player | `ncmpcpp` |
| `mod + N` | Low Brightness | `brightnessctl set 1` |
| `mod + Up/Down` | Music Seek | `mpc` |
| `Print` | Screenshot | `grim` |

---

## Environment Features

### Niri — Custom GLSL Shaders

The Niri configuration integrates custom shaders for window manipulation via GLSL:

- **Dissolve Effect** — Close shader that uses fractal noise (FBM) to disintegrate the window.
- **Drift Reveal** — Open shader that displaces pixels based on a random seed.

### Hyprland — Layout

- **Dwindle** — Pseudotiling layout with split preservation.
- **Window Rules** — Forced 80% opacity for terminals (`foot`, `kitty`, `Alacritty`).
- **Workspaces** — 9 virtual workspaces, navigated with `mod + [1-9]` or `mod + Page_Up/Down`.

---

## Installation

```sh
# 1. Clone the repository
git clone <repo-url> ~/.config/

# 2. Ensure binaries are on the correct PATH
which foot   # should point to the correct binary
which zsh    # should point to /usr/local/bin/zsh

# 3. Autostart scripts will launch:
#    waybar, pulseaudio, and the corresponding wallpaper daemon
```
