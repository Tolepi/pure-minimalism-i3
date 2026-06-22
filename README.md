# Dotfiles

Personal configuration for a minimalist, industrial Linux workflow.

## Environment
* **WM:** i3
* **Terminal:** Alacritty
* **Shell:** Bash
* **Editors:** Neovim / Nano (B&W mode)
* **Launcher:** Rofi (dmenu-style)

## Setup
* **Terminal:** Prompt with dynamic kaomoji exit codes.
* **Fastfetch:** Minimalist layout (pkg, env, shl).
* **Editors:** Forced grayscale/monochrome interface.

## Notes
I have absolutely no idea how to write a proper README, so I had to make Gemini do it for me while I cried about it. Boohoo. Also, I don't know what I'm doing with the license part, so just pretend it's legal and official.

## Installation
Map the configuration files to `~/.config/`. Ensure root consistency:
```bash
doas cp /home/avery/.nanorc /root/.nanorc
