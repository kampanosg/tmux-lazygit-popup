<p align="center">
    <b>tmux-lazygit-popup</b>
    <br />
    <i>Access LazyTest from anywhere in tmux, without a session/window/pane 💬</i>
    <br />

    https://github.com/kampanosg/tmux-lazygit-popup/assets/30287348/b5a3edcc-7986-41ac-8ca5-5a20cf4148ff
</p>

## Installation

Install the plugin via the [TPM](https://github.com/tmux-plugins/tpm/) plugin manager. Add the following line to the `.tmux.conf` and install with `<prefix>I

```sh
set -g @plugin 'kampanosg/tmux-lazygit-popup'
```

### Prerequisites

* [LazyGit](https://github.com/jesseduffield/lazygit)
* [Bash](https://www.gnu.org/software/bash/)

### Customisation

Add the following vars to the `.tmux.conf` to change the key, width, height and border of the popup

```sh
TMUX_LAZYGIT_POPUP_KEY='C-g'
TMUX_LAZYGIT_POPUP_WIDTH='70%'
TMUX_LAZYGIT_POPUP_HEIGHT='70%'
TMUX_LAZYGIT_POPUP_BORDER='double'
```

The available `TMUX_LAZYGIT_POPUP_BORDER` values are `single`, `rounded`, `double`, `heavy`, `simple` and `none`. The default value is `rounded`.

## Usage

To launch `tmux-lazygit-plugin`, press `<prefix>G` (`Shift + g`). The plugin will use the active pane's current working directory to launch `LazyGit` from. You can close the popup by stopping `LazyGit` (e.g. by pressing `q`)
