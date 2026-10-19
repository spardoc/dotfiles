# dotfiles

My personal Linux config setup: **Arch-based, Wayland** — niri compositor, ghostty terminal and Neovim with Catppuccin Mocha accents.

## Apps

| App | Directory | Notes |
|---|---|---|
| [zsh](zsh/) | `~/.zshrc` | oh-my-zsh, afowler theme, custom prompt with git branch, eza aliases |
| [ghostty](ghostty/) | `~/.config/ghostty` | Catppuccin Mocha theme, 92% opacity, custom font styles |
| [nvim](nvim/) | `~/.config/nvim` | [LazyVim](https://github.com/LazyVim/starter) + custom plugins (flutter, springboot, catppuccin, blink, noice, react) |
| [niri](niri/) | `~/.config/niri` | Wayland compositor config (`config.kdl`) |
| [noctalia](noctalia/) | `~/.config/noctalia` | Shell/overlay config + color palette |
| [fastfetch](fastfetch/) | `~/.config/fastfetch` | System info with custom logo |
| [fuzzel](fuzzel/) | `~/.config/fuzzel` | App launcher theming |

## Install

```bash
git clone https://github.com/spardoc/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The script symlinks each config into place and backs up any existing files with a
timestamped suffix (e.g. `~/.zshrc.bak-20261019_153000`).

## Updating

```bash
cd ~/dotfiles
git add -A && git commit -m "update config" && git push
```

## Not included

Configs containing credentials (environment.d, app service tokens) are
intentionally excluded — keep secrets out of git.
