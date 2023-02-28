# @nlebedevinc/tmux-theme
Basic theme for [Tmux][github-tmux], based on my [dotfiles][dotfiles] and inspired by [powerline][powerline]. Subthemes with different color flavors are coming, please stand by.

<!-- Picture is on the way -->

## Installation

### Install manually

The simplest way is just place theme setup at the bottom of your current `tmux.conf`:

> :warning: HINT: Always make a backup of your config files before any action.

```bash
cat default.conf >> ~/.tmux.conf
```

### Install through [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

> :warning: Note: Not verified yet. Please stand by

Add plugin to the list of TPM plugins in `.tmux.conf` and select desired theme

```bash
set -g @plugin 'nlebedevinc/tmux-theme'
set -g @tmux-theme 'default' # or 'other'
```

Hit `prefix + I` to fetch the plugin and source it. Your Tmux should be updated with the theme at this point.

## License

[MIT](./LICENSE) License &copy; 2023-PRESENT [Nick Lebedev](https://github.com/nlebedevinc)

[github-tmux]: https://github.com/tmux/tmux
[dotfiles]: https://github.com/nlebedevinc/dotfiles
[powerline]: https://github.com/Lokaltog/powerline
