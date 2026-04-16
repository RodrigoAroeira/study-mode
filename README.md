# Study Mode

Block distracting applications while you study.

## How it works

Study mode runs a loop that periodically checks for and kills specified applications. If an app is running, it sends a notification and terminates it.

## Installation

Clone this repo and install locally:

```bash
cd study-mode
makepkg -si
```

## Usage

1. Create the config file `~/.config/study-mode.conf`:

```
steam
discord
telegram
```

1. Start the service:

- **Systemd**: `systemctl --user enable --now study-mode`
- **Terminal**: `study-mode` (keeps running while terminal is open)

## Commands

- Start: `systemctl --user start study-mode`
- Stop: `systemctl --user stop study-mode`
- Status: `systemctl --user status study-mode`

## Reload config

Edit `~/.config/study-mode.conf` - the service reloads automatically on save.

## Uninstall

```bash
sudo pacman -R study-mode
rm ~/.config/study-mode.conf
```

